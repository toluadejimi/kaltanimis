<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Recycle;
Use App\Models\FactoryTotal;
use Auth;


class RecycleController extends Controller
{
    //
    public $successStatus = true;
    public $failedStatus = false;

    public function getRecycle(Request $request)
    {
        $recycle = Recycle::where('user_id', Auth::id())->get();
        return [
            "status" => $this->successStatus,
            "message" => "Successfull",
            "data" => $recycle
        ];
    }

    public function recycle(Request $request){
        $trans = Transfer::where('factory_id',Auth::user()->location_id)->first();
        if(empty($trans)){
            return response()->json([
                'status' => $this->failedStatus,
                'message'    => ' No Transfer Found',
            ], 500);
        }
        $total = BailedDetails::where('location_id',Auth::user()->location_id)->first();
        if (empty($total)) {
            return response()->json([
                'status' => $this->failedStatus,
                'message'    => ' No Transfer Found',
            ], 500);
        }
        
        $tall = ($total->Clean_Clear + $total->Others + $total->Green_Colour + $total->Trash);
        if ($request->item_weight_input > $tall) {
            return response()->json([
                'status' => $this->failedStatus,
                'message'    => ' Insufficent Transfer',
            ], 500);
        }
        $checkrecycle = RecyclesDetails::where('location_id',Auth::user()->location_id)->first();
        if ($request->Clean_Clear > $total->Clean_Clear) {

            return response()->json([
                'status' => $this->failedStatus,
                'message'    => ' Insufficent Clean Clear',
            ], 500);

        }elseif ($request->Green_Colour > $total->Green_Colour) {
            return response()->json([
                'status' => $this->failedStatus,
                'message'    => ' Insufficent Green Colour',
            ], 500);
        }elseif ($request->Others > $total->Others) {
            return response()->json([
                'status' => $this->failedStatus,
                'message'    => ' Insufficent Others',
            ], 500);
        }elseif ($request->Trash > $total->Trash) {
            return response()->json([
                'status' => $this->failedStatus,
                'message'    => ' Insufficent Trash',
            ], 500);
        }
        if (empty($checkrecycle)) {
            $ry = new RecyclesDetails();
            $ry->Clean_Clear = $request->Clean_Clear ?? 0;
            $ry->Green_Colour = $request->Green_Colour ?? 0;
            $ry->Others = $request->Others ?? 0;
            $ry->Trash = $request->Trash ?? 0;
            $ry->location_id = Auth::user()->location_id;
            $ry->save();
        }else{
            $updated = RecyclesDetails::where('location_id', Auth::user()->location_id)->first();
            $updated->update(['Clean_Clear' => ($updated->Clean_Clear + $request->Clean_Clear ?? 0)]);
            $updated->update(['Green_Colour' => ($updated->Green_Colour +$request->Green_Colour ?? 0)]);
            $updated->update(['Others' => ($updated->Others + $request->Others ?? 0)]);
            $updated->update(['Trash' => ($updated->Trash + $request->Trash ?? 0)]);


        }
        $updated = BailedDetails::where('location_id', Auth::user()->location_id)->first();
        $updated->update(['Clean_Clear' => ($updated->Clean_Clear - $request->Clean_Clear ?? 0)]);
        $updated->update(['Green_Colour' => ($updated->Green_Colour - $request->Green_Colour ?? 0)]);
        $updated->update(['Others' => ($updated->Others - $request->Others ?? 0)]);
        $updated->update(['Trash' => ($updated->Trash - $request->Trash ?? 0)]);


        $weightIn = ($request->Clean_Clear + $request->Green_Colour + $request->Others + $request->Trash);
        $recycle = Recycle::create([
            "item_weight_input" => $weightIn ?? 0,
            "costic_soda" => $request->costic_soda ?? 0,
            "detergent" => $request->detergent ?? 0,
            "item_weight_output" => $request->item_weight_output ?? 0,
            "Clean_Clear" => $request->Clean_Clear ?? 0,
            "Green_Colour" => $request->Green_Colour ?? 0,
            "Others" => $request->Others ?? 0,
            "Trash" => $request->Trash ?? 0,
            "factory_id"    => Auth::user()->location_id,
            "user_id" => Auth::id(),
            
        ]);

        $recycled = $request->item_weight_output;

        $factory_id = $request->factory_id;

        
       

        if (FactoryTotal::where('factory_id',Auth::user()->location_id)->exists()) {
            # code...
            $t = FactoryTotal::where('factory_id',Auth::user()->location_id)->first();
            $t->update(['recycled' => ($t->recycled + $recycled)]);
            $t->update(['flesk' => ($t->flesk + $request->item_weight_output)]);
        }else{
            $total = new  FactoryTotal();
            $total->recycled = $recycled ?? 0;
            $total->flesk = $request->item_weight_output ?? 0;
            $total->factory_id = $request->factory_id;
            //dd($total);
            $total->save();
        }
            
        
        return [
            "status" => $this->successStatus,
            "message" => "Recycle record created successfully",
            "data" => $recycle,
            "total" => $t->recycled
        ];

    }
}

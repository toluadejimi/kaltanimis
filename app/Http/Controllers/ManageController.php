<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Auth;
use App\Models\User;
use App\Models\Total;
use App\Models\History;
use App\Models\Location;
use App\Models\Collection;
use App\Models\Item;
use App\Models\Sales;
use App\Models\SalesDetails;
use App\Models\Factory;
use App\Models\Transfer;
use App\Models\TransferDetails;
use App\Models\BailingItem;
use App\Models\Sorting;
use App\Models\Bailing;
use App\Models\Recycle;
use App\Models\UserRole;
use App\Models\FactoryTotal;
use App\Models\SortedTransfer;
use App\Models\SortDetailsHistory;
use App\Models\SortDetails;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use DB;
use Session;
use Illuminate\Support\Arr;
use Carbon\Carbon;
use App\Http\Traits\HistoryTrait;
use App\Models\BailedDetails;
use App\Models\CollectedDetails;
use App\Models\BailedDetailsHistory;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;

class ManageController extends Controller
{
    //
    public function createRole(Request $request)
    {
        
            $role = new UserRole();
            $role->name = $request->input('name');
            $role->user_id = Auth::id();
            $role->save();

            return back()->with('message', 'Role Created Successfully'); 
    }
    public function roleList()
    {
        $role = UserRole::all();
        return view('manage/role',compact('role'));
    }
    public function roleEdit($id)
    {
        $role = UserRole::find($id);
        return view('manage/role_edit',compact('role'));
    }
    public function roleEditUpdate(Request $request, $id)
    {
        $role = Role::find($id);
        $role->name = $request->input('name');
        $role->save();

        return redirect('manage/role')->with('message', 'Role Updated Successfully');
    }
    public function roleDelete($id){
        $role = UserRole::find($id);
        $role->delete();
        return redirect('manage/role')->with('message', 'Role Deleted Successfully');
    }





    public function deleteCollection($id)
    {
        $items = Collection::find($id);
        $items->delete();
        
        return back()->with('message', 'Deleted Successfully');
    }

    public function deleteSorting($id)
    {
        //delete sort_item
        $items = Sorting::find($id);
        $itemsSum = DB::table('sortings')
                            ->where('id',$id)
                            ->sum(\DB::raw('Clean_Clear + Green_Colour + Others + Trash'));
        $total = CollectedDetails::where('location_id',$items->location_id)->first();

        $old_total_collected = $total->collected;
        $total->increment('collected', $itemsSum);
        //dd($itemsSum);

        $updated = SortDetails::where('location_id', $items->location_id)->first();
        $updated->update(['Clean_Clear' => ($updated->Clean_Clear - $items->Clean_Clear)]);
                   $updated->update(['Green_Colour' => ($updated->Green_Colour - $items->Green_Colour )]);
                   $updated->update(['Others' => ($updated->Others - $items->Others )]);
                   $updated->update(['Trash'=> ($updated->Trash - $items->Trash )]);
                   $updated->update(['Caps' => ($updated->Caps - $items->Caps )]);
        $items->delete();
        return back()->with('message', 'Deleted Successfully');
    }

    public function deleteBailing($id)
    {
        //delete sort_item
        $items = Bailing::find($id);
        $itemsSum = DB::table('bailings')
                            ->where('id',$id)
                            ->sum(\DB::raw('Clean_Clear + Green_Colour + Others + Trash'));
        
        //dd($itemsSum);

        $updated = BailedDetails::where('location_id', $items->location_id)->first();
        $updated->update(['Clean_Clear' => ($updated->Clean_Clear - $items->Clean_Clear)]);
        $updated->update(['Green_Colour' => ($updated->Green_Colour - $items->Green_Colour)]);
        $updated->update(['Others' => ($updated->Others - $items->Others)]);
        $updated->update(['Trash' => ($updated->Trash - $items->Trash)]);
        
        $updated = SortDetails::where('location_id', $items->location_id)->first();
        $updated->update(['Clean_Clear' => ($updated->Clean_Clear + $items->Clean_Clear)]);
        $updated->update(['Green_Colour' => ($updated->Green_Colour + $items->Green_Colour)]);
        $updated->update(['Others' => ($updated->Others + $items->Others)]);
        $updated->update(['Trash' => ($updated->Trash + $items->Trash)]);
        $items->delete();
        return back()->with('message', 'Deleted Successfully');
    }

    public function deleteTransfer($id)
    {
        //delete sort_item
        $items = Transfer::find($id);
        $itemsSum = DB::table('transfers')
                            ->where('id',$id)
                            ->sum(\DB::raw('Clean_Clear + Green_Colour + Others + Trash'));
        $total = Total::where('location_id',$items->location_id)->first();

        $old_total_collected = $total->collected;
        $total->update(['bailed' => ($total->bailed + $itemsSum)]);
        $total->update(['transfered' => ($total->transfered - $itemsSum)]);
        //dd($itemsSum);

        $updated = TransferDetails::where('location_id', $items->location_id)->first();
        $updated->update(['Clean_Clear' => ($updated->Clean_Clear - $items->Clean_Clear)]);
        $updated->update(['Green_Colour' => ($updated->Green_Colour - $items->Green_Colour)]);
        $updated->update(['Others' => ($updated->Others - $items->Others)]);
        $updated->update(['Trash' => ($updated->Trash - $items->Trash)]);
        $items->delete();
        return back()->with('message', 'Deleted Successfully');
    }

    public function deleteRecycle($id)
    {
        //delete sort_item
        $items = Recycle::find($id);
       $rcy = Recycle::where('id',$id)->first();
       $trans = Transfer::where('factory_id',$items->factory_id)->first();
        if(FactoryTotal::where('factory_id',$items->factory_id)->exists()) {
            # code...
            $t = FactoryTotal::where('factory_id',$items->factory_id)->first();
            $t->decrement('recycled',$items->item_weight_input);
            $t->decrement('flesk',$items->item_weight_output);
        }
        //dd($rcy,$trans,$items->item_weight_input);
        $total = RecyclesDetails::where('location_id',$rcy->location_id)->first();
        $total->update(['Clean_Clear' => ($updated->Clean_Clear - $rcy->Clean_Clear ?? 0)]);
        $total->update(['Green_Colour' => ($updated->Green_Colour  - $rcy->Green_Colour ?? 0)]);
        $total->update(['Others' => ($updated->Others - $rcy->Others ?? 0)]);
        $total->update(['Trash' => ($updated->Trash - $rcy->Trash ?? 0)]);

        $updated = TransferDetails::where('location_id', $rcy->factory_id)->first();
        $updated->update(['Clean_Clear' => ($updated->Clean_Clear - $rcy->Clean_Clear ?? 0)]);
        $updated->update(['Green_Colour' => ($updated->Green_Colour - $rcy->Green_Colour ?? 0)]);
        $updated->update(['Others' => ($updated->Others - $rcy->Others ?? 0)]);
        $updated->update(['Trash' => ($updated->Trash - $rcy->Trash ?? 0)]);

        $items->delete();
        return back()->with('message', 'Deleted Successfully');
    }

    public function deleteSales($id)
    {
        //delete sort_item
        $items = Sales::find($id);
       //dd($items);
        if(FactoryTotal::where('factory_id',$items->factory_id)->exists()) {
            # code...
            $t = FactoryTotal::where('factory_id',$items->factory_id)->first();
            $t->increment('recycled', $items->item_weight);
        }
 
        $items->delete();
        return back()->with('message', 'Deleted Successfully');
    }
    
    public function deleteSalesBailed($id)
    {
        $saledetails = SalesDetails::find($id);
       //dd($items);
       $sales = ($saledetails->Clean_Clear + $saledetails->Others + $saledetails->Green_Colour + $saledetails->Trash);
                    $total = Total::where('location_id',$saledetails->location_id)->first();

                    $total->update(['bailed' => ($total->bailed + $sales)]);
                    
                    $updated = BailedDetails::where('location_id', $saledetails->location_id)->first();
                    //dd($updated->Clean_Clear);
                    $updated->update(['Clean_Clear' => ($updated->Clean_Clear + $saledetails->Clean_Clear ?? 0)]);
                    $updated->update(['Green_Colour' => ($updated->Green_Colour + $saledetails->Green_Colour ?? 0)]);
                    $updated->update(['Others' => ($updated->Others + $saledetails->Others ?? 0)]);
                    $updated->update(['Trash' => ($updated->Trash + $saledetails->Trash ?? 0)]);
                    
            if($saledetails->currency == "NGN")
            {
            $sales_amount = $saledetails->amount_ngn;
            }else{
                $sales_amount = $saledetails->amount_usd;
            }
            $t = FactoryTotal::where('location_id',$saledetails->location_id)->first();
            $t->decrement('sales', $sales_amount);
        
 
        $saledetails->delete();
        return back()->with('message', 'Deleted Successfully');   
    }
    public function sortedTransferDeleted($id)
    {
            $sortedTransferDeleted = SortedTransfer::find($id);
           $updated = SortDetails::where('location_id', $sortedTransferDeleted->toLocation)->first();
            $updated->update(['Clean_Clear' => ($updated->Clean_Clear - $sortedTransferDeleted->Clean_Clear )]);
            $updated->update(['Green_Colour' => ($updated->Green_Colour - $sortedTransferDeleted->Green_Colour )]);
            $updated->update(['Others' => ($updated->Others - $sortedTransferDeleted->Others )]);
            $updated->update(['Trash' => ($updated->Trash - $sortedTransferDeleted->Trash )]);
            $updated->update(['Caps' => ($updated->Caps - $sortedTransferDeleted->Caps )]);



            $updated = SortDetails::where('location_id', $sortedTransferDeleted->formLocation)->first();
            $updated->update(['Clean_Clear' => ($updated->Clean_Clear + $sortedTransferDeleted->Clean_Clear )]);
            $updated->update(['Green_Colour' => ($updated->Green_Colour + $sortedTransferDeleted->Green_Colour )]);
            $updated->update(['Others' => ($updated->Others + $sortedTransferDeleted->Others )]);
            $updated->update(['Trash' => ($updated->Trash + $sortedTransferDeleted->Trash )]);
            $updated->update(['Caps' => ($updated->Caps + $sortedTransferDeleted->Caps )]);
            $sortedTransferDeleted->delete();
            return back()->with('message', 'Deleted Successfully');
    }

}

package com.sulake.habbo.room.utils
{
   import com.sulake.habbo.room.ISelectedRoomObjectData;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class SelectedRoomObjectData implements ISelectedRoomObjectData
   {
       
      
      private var _id:int = 0;
      
      private var _category:int = 0;
      
      private var var_2328:String = "";
      
      private var var_72:Vector3d = null;
      
      private var var_240:Vector3d = null;
      
      private var var_2327:int = 0;
      
      private var var_2326:String = null;
      
      public function SelectedRoomObjectData(param1:int, param2:int, param3:String, param4:IVector3d, param5:IVector3d, param6:int = 0, param7:String = null)
      {
         super();
         this._id = param1;
         this._category = param2;
         this.var_2328 = param3;
         this.var_72 = new Vector3d();
         this.var_72.assign(param4);
         this.var_240 = new Vector3d();
         this.var_240.assign(param5);
         this.var_2327 = param6;
         this.var_2326 = param7;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get operation() : String
      {
         return this.var_2328;
      }
      
      public function get loc() : Vector3d
      {
         return this.var_72;
      }
      
      public function get dir() : Vector3d
      {
         return this.var_240;
      }
      
      public function get typeId() : int
      {
         return this.var_2327;
      }
      
      public function get instanceData() : String
      {
         return this.var_2326;
      }
      
      public function dispose() : void
      {
         this.var_72 = null;
         this.var_240 = null;
      }
   }
}

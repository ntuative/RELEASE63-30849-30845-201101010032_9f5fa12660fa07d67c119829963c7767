package com.sulake.habbo.communication.messages.outgoing.room.engine
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   
   public class PlaceObjectMessageComposer implements IMessageComposer
   {
       
      
      private var var_327:int;
      
      private var var_2019:int;
      
      private var var_2622:String;
      
      private var _x:int = 0;
      
      private var var_159:int = 0;
      
      private var var_240:int = 0;
      
      private var _roomId:int;
      
      private var _roomCategory:int;
      
      public function PlaceObjectMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int = 0, param8:int = 0)
      {
         super();
         this.var_327 = param1;
         this.var_2019 = param2;
         this.var_2622 = param3;
         this._x = param4;
         this.var_159 = param5;
         this.var_240 = param6;
         this._roomId = param7;
         this._roomCategory = param8;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         switch(this.var_2019)
         {
            case RoomObjectCategoryEnum.OBJECT_CATEGORY_FURNITURE:
               return [this.var_327 + " " + this._x + " " + this.var_159 + " " + this.var_240];
            case RoomObjectCategoryEnum.const_27:
               return [this.var_327 + " " + this.var_2622];
            default:
               return [];
         }
      }
   }
}

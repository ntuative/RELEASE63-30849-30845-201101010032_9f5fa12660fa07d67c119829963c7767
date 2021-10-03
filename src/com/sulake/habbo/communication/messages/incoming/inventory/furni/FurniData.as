package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2309:int;
      
      private var var_1385:String;
      
      private var _objId:int;
      
      private var var_1750:int;
      
      private var _category:int;
      
      private var var_1926:String;
      
      private var var_2306:Boolean;
      
      private var var_2308:Boolean;
      
      private var var_2310:Boolean;
      
      private var var_2014:Boolean;
      
      private var var_2307:int;
      
      private var var_1263:int;
      
      private var var_1760:String = "";
      
      private var var_2010:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2309 = param1;
         this.var_1385 = param2;
         this._objId = param3;
         this.var_1750 = param4;
         this._category = param5;
         this.var_1926 = param6;
         this.var_2306 = param7;
         this.var_2308 = param8;
         this.var_2310 = param9;
         this.var_2014 = param10;
         this.var_2307 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1760 = param1;
         this.var_1263 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2309;
      }
      
      public function get itemType() : String
      {
         return this.var_1385;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1750;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1926;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2306;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2308;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2310;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2014;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2307;
      }
      
      public function get slotId() : String
      {
         return this.var_1760;
      }
      
      public function get songId() : int
      {
         return this.var_2010;
      }
      
      public function get extra() : int
      {
         return this.var_1263;
      }
   }
}

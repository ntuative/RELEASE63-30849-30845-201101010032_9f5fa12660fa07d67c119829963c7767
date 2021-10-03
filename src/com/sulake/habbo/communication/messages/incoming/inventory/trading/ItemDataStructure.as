package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2108:int;
      
      private var var_1385:String;
      
      private var var_2117:int;
      
      private var var_2122:int;
      
      private var _category:int;
      
      private var var_1926:String;
      
      private var var_1263:int;
      
      private var var_2118:int;
      
      private var var_2119:int;
      
      private var var_2120:int;
      
      private var var_2123:int;
      
      private var var_2121:Boolean;
      
      private var var_2739:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2108 = param1;
         this.var_1385 = param2;
         this.var_2117 = param3;
         this.var_2122 = param4;
         this._category = param5;
         this.var_1926 = param6;
         this.var_1263 = param7;
         this.var_2118 = param8;
         this.var_2119 = param9;
         this.var_2120 = param10;
         this.var_2123 = param11;
         this.var_2121 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2108;
      }
      
      public function get itemType() : String
      {
         return this.var_1385;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2117;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2122;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1926;
      }
      
      public function get extra() : int
      {
         return this.var_1263;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2118;
      }
      
      public function get creationDay() : int
      {
         return this.var_2119;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2120;
      }
      
      public function get creationYear() : int
      {
         return this.var_2123;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2121;
      }
      
      public function get songID() : int
      {
         return this.var_1263;
      }
   }
}

package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2135:int;
      
      private var var_2133:int;
      
      private var var_2132:int;
      
      private var _dayOffsets:Array;
      
      private var var_1610:Array;
      
      private var var_1609:Array;
      
      private var var_2134:int;
      
      private var var_2136:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2135;
      }
      
      public function get offerCount() : int
      {
         return this.var_2133;
      }
      
      public function get historyLength() : int
      {
         return this.var_2132;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1610;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1609;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2134;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2136;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2135 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2133 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2132 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1610 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1609 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2134 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2136 = param1;
      }
   }
}

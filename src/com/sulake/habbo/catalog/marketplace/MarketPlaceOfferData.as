package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2502:int;
      
      private var var_1926:String;
      
      private var var_1459:int;
      
      private var var_2135:int;
      
      private var var_2606:int;
      
      private var _status:int;
      
      private var var_2503:int = -1;
      
      private var var_1843:int;
      
      private var var_39:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2502 = param3;
         this.var_1926 = param4;
         this.var_1459 = param5;
         this._status = param6;
         this.var_2135 = param7;
         this.var_1843 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_39)
         {
            this.var_39.dispose();
            this.var_39 = null;
         }
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2502;
      }
      
      public function get stuffData() : String
      {
         return this.var_1926;
      }
      
      public function get price() : int
      {
         return this.var_1459;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2135;
      }
      
      public function get image() : BitmapData
      {
         return this.var_39;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_39 != null)
         {
            this.var_39.dispose();
         }
         this.var_39 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2606 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2606;
      }
      
      public function get status() : int
      {
         return this._status;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2503;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2503 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1459 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this._offerId = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_1843;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1843 = param1;
      }
   }
}

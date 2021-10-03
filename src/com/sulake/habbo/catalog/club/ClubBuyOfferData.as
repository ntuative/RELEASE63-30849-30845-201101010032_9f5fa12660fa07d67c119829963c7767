package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1458:String;
      
      private var var_1459:int;
      
      private var var_1983:Boolean;
      
      private var var_1985:Boolean;
      
      private var var_1988:int;
      
      private var var_1987:int;
      
      private var var_410:ICatalogPage;
      
      private var var_1984:int;
      
      private var var_1989:int;
      
      private var var_1986:int;
      
      private var var_1982:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1458 = param2;
         this.var_1459 = param3;
         this.var_1983 = param4;
         this.var_1985 = param5;
         this.var_1988 = param6;
         this.var_1987 = param7;
         this.var_1984 = param8;
         this.var_1989 = param9;
         this.var_1986 = param10;
      }
      
      public function dispose() : void
      {
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1458;
      }
      
      public function get price() : int
      {
         return this.var_1459;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_1983;
      }
      
      public function get vip() : Boolean
      {
         return this.var_1985;
      }
      
      public function get periods() : int
      {
         return this.var_1988;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_1987;
      }
      
      public function get year() : int
      {
         return this.var_1984;
      }
      
      public function get month() : int
      {
         return this.var_1989;
      }
      
      public function get day() : int
      {
         return this.var_1986;
      }
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_480;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1459;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_410;
      }
      
      public function get priceType() : String
      {
         return Offer.const_751;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1458;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_410 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_1982;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_1982 = param1;
      }
   }
}

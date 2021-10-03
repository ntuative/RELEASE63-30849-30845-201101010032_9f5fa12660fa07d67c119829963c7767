package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1458:String;
      
      private var var_1459:int;
      
      private var var_1983:Boolean;
      
      private var var_1985:Boolean;
      
      private var var_1988:int;
      
      private var var_1987:int;
      
      private var var_1984:int;
      
      private var var_1989:int;
      
      private var var_1986:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1458 = param1.readString();
         this.var_1459 = param1.readInteger();
         this.var_1983 = param1.readBoolean();
         this.var_1985 = param1.readBoolean();
         this.var_1988 = param1.readInteger();
         this.var_1987 = param1.readInteger();
         this.var_1984 = param1.readInteger();
         this.var_1989 = param1.readInteger();
         this.var_1986 = param1.readInteger();
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
   }
}

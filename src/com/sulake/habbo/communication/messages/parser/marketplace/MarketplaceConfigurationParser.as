package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1383:Boolean;
      
      private var var_2587:int;
      
      private var var_1848:int;
      
      private var var_1849:int;
      
      private var var_2586:int;
      
      private var var_2585:int;
      
      private var var_2588:int;
      
      private var var_2241:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1383;
      }
      
      public function get commission() : int
      {
         return this.var_2587;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1848;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1849;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2585;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2586;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2588;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2241;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1383 = param1.readBoolean();
         this.var_2587 = param1.readInteger();
         this.var_1848 = param1.readInteger();
         this.var_1849 = param1.readInteger();
         this.var_2585 = param1.readInteger();
         this.var_2586 = param1.readInteger();
         this.var_2588 = param1.readInteger();
         this.var_2241 = param1.readInteger();
         return true;
      }
   }
}

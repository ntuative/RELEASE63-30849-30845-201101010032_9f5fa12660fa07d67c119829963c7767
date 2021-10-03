package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1383:Boolean = false;
      
      private var var_1459:int;
      
      private var var_1683:Array;
      
      private var var_694:Array;
      
      private var var_693:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1383 = _loc2_.isWrappingEnabled;
         this.var_1459 = _loc2_.wrappingPrice;
         this.var_1683 = _loc2_.stuffTypes;
         this.var_694 = _loc2_.boxTypes;
         this.var_693 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1383;
      }
      
      public function get price() : int
      {
         return this.var_1459;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1683;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_694;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_693;
      }
   }
}

package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2617:Boolean;
      
      private var var_2616:int;
      
      private var var_1683:Array;
      
      private var var_694:Array;
      
      private var var_693:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2617;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2616;
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1683 = [];
         this.var_694 = [];
         this.var_693 = [];
         this.var_2617 = param1.readBoolean();
         this.var_2616 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1683.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_694.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_693.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}

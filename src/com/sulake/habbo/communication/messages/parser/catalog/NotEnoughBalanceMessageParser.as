package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1748:int = 0;
      
      private var var_1749:int = 0;
      
      private var var_1593:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1748;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1749;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1593;
      }
      
      public function flush() : Boolean
      {
         this.var_1748 = 0;
         this.var_1749 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1748 = param1.readInteger();
         this.var_1749 = param1.readInteger();
         this.var_1593 = param1.readInteger();
         return true;
      }
   }
}

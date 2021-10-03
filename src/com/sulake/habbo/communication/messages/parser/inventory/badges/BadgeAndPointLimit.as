package com.sulake.habbo.communication.messages.parser.inventory.badges
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class BadgeAndPointLimit
   {
       
      
      private var var_275:String;
      
      private var var_1865:int;
      
      public function BadgeAndPointLimit(param1:String, param2:IMessageDataWrapper)
      {
         super();
         this.var_275 = "ACH_" + param1 + param2.readInteger();
         this.var_1865 = param2.readInteger();
      }
      
      public function get badgeId() : String
      {
         return this.var_275;
      }
      
      public function get limit() : int
      {
         return this.var_1865;
      }
   }
}

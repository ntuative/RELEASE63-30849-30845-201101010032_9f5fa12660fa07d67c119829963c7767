package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2445:int;
      
      private var var_2450:int;
      
      private var var_1077:int;
      
      private var var_1079:int;
      
      private var var_1593:int;
      
      private var var_2451:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2445 = param1.readInteger();
         this.var_2450 = param1.readInteger();
         this.var_1077 = param1.readInteger();
         this.var_1079 = param1.readInteger();
         this.var_1593 = param1.readInteger();
         this.var_2451 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2445;
      }
      
      public function get charges() : int
      {
         return this.var_2450;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1077;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1079;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2451;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1593;
      }
   }
}

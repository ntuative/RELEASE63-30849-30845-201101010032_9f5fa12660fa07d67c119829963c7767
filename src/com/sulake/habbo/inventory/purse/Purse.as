package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1528:int = 0;
      
      private var var_1527:int = 0;
      
      private var var_2311:int = 0;
      
      private var var_2312:Boolean = false;
      
      private var var_2079:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1528 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1527 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2311 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2312 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2079 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1528;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1527;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2311;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2312;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2079;
      }
   }
}

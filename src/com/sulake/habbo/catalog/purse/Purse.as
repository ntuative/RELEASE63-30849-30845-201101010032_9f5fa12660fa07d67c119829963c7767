package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_480:int = 0;
       
      
      private var var_2081:int = 0;
      
      private var var_1249:Dictionary;
      
      private var var_1528:int = 0;
      
      private var var_1527:int = 0;
      
      private var var_2079:Boolean = false;
      
      private var var_2080:int = 0;
      
      private var var_2082:int = 0;
      
      public function Purse()
      {
         this.var_1249 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2081;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2081 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1528;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1528 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1527;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1527 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1528 > 0 || this.var_1527 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2079;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2079 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2080;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2080 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2082;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2082 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1249;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1249 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1249[param1];
      }
   }
}

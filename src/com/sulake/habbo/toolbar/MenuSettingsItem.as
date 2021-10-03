package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2305:String;
      
      private var var_2480:Array;
      
      private var var_2479:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2305 = param1;
         this.var_2480 = param2;
         this.var_2479 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2305;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2480;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2479;
      }
   }
}

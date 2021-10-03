package com.sulake.habbo.session.events
{
   import flash.events.Event;
   
   public class HabboSessionFigureUpdatedEvent extends Event
   {
      
      public static const const_771:String = "HABBO_SESSION_FIGURE_UPDATE";
       
      
      private var _userId:int;
      
      private var var_597:String;
      
      private var var_907:String;
      
      public function HabboSessionFigureUpdatedEvent(param1:int, param2:String, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(const_771,param4,param5);
         this._userId = param1;
         this.var_597 = param2;
         this.var_907 = param3;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get figure() : String
      {
         return this.var_597;
      }
      
      public function get gender() : String
      {
         return this.var_907;
      }
   }
}

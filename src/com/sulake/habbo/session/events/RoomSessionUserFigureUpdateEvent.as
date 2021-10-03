package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionUserFigureUpdateEvent extends RoomSessionEvent
   {
      
      public static const const_149:String = "RSUBE_FIGURE";
       
      
      private var _userId:int = 0;
      
      private var var_597:String = "";
      
      private var var_907:String = "";
      
      private var var_1785:String = "";
      
      private var var_2033:int;
      
      public function RoomSessionUserFigureUpdateEvent(param1:IRoomSession, param2:int, param3:String, param4:String, param5:String, param6:int, param7:Boolean = false, param8:Boolean = false)
      {
         super(const_149,param1,param7,param8);
         this._userId = param2;
         this.var_597 = param3;
         this.var_907 = param4;
         this.var_1785 = param5;
         this.var_2033 = param6;
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
      
      public function get customInfo() : String
      {
         return this.var_1785;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2033;
      }
   }
}

package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1322:int;
      
      private var var_1790:int;
      
      private var var_1998:int;
      
      private var var_1664:int;
      
      private var var_1323:int;
      
      private var var_1999:String = "";
      
      private var var_1996:String = "";
      
      private var var_1997:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1322 = param1.readInteger();
         this.var_1999 = param1.readString();
         this.var_1790 = param1.readInteger();
         this.var_1998 = param1.readInteger();
         this.var_1664 = param1.readInteger();
         this.var_1323 = param1.readInteger();
         this.var_1997 = param1.readInteger();
         this.var_1996 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1322;
      }
      
      public function get points() : int
      {
         return this.var_1790;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_1998;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1664;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1323;
      }
      
      public function get badgeID() : String
      {
         return this.var_1999;
      }
      
      public function get achievementID() : int
      {
         return this.var_1997;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_1996;
      }
   }
}

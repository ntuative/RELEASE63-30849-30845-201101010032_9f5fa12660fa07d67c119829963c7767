package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_178:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_203:String = "RWUIUE_PEER";
      
      public static const const_1484:int = 0;
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const const_953:int = 2;
      
      public static const const_935:int = 3;
      
      public static const const_1276:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1540:String = "";
      
      private var var_2033:int;
      
      private var var_2037:int = 0;
      
      private var var_2036:int = 0;
      
      private var var_597:String = "";
      
      private var var_39:BitmapData = null;
      
      private var var_239:Array;
      
      private var var_1368:int = 0;
      
      private var var_2358:String = "";
      
      private var var_2357:int = 0;
      
      private var var_2356:int = 0;
      
      private var var_1799:Boolean = false;
      
      private var var_1541:String = "";
      
      private var var_2359:Boolean = false;
      
      private var var_2363:Boolean = true;
      
      private var _respectLeft:int = 0;
      
      private var var_2360:Boolean = false;
      
      private var var_2365:Boolean = false;
      
      private var var_2361:Boolean = false;
      
      private var var_2362:Boolean = false;
      
      private var var_2364:Boolean = false;
      
      private var var_2366:Boolean = false;
      
      private var var_2367:int = 0;
      
      private var var_1796:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_239 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1540 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1540;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2033 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2033;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2037 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2037;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2036 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2036;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_597 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_597;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_39 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_39;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_239 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_239;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1368 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1368;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2358 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2358;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2359 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2359;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this._respectLeft = param1;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2360 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2360;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2365 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2365;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2361 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2361;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2362 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2362;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2364 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2364;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2366 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2366;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2367 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2367;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2363 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2363;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1796 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1796;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2357 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2357;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2356 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2356;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1799 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1799;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1541 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1541;
      }
   }
}

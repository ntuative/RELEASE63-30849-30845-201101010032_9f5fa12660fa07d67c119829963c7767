package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_306:int;
      
      private var var_732:Boolean;
      
      private var var_817:String;
      
      private var _ownerName:String;
      
      private var var_2219:int;
      
      private var var_2049:int;
      
      private var var_2336:int;
      
      private var var_1513:String;
      
      private var var_2338:int;
      
      private var var_2340:Boolean;
      
      private var var_763:int;
      
      private var var_1377:int;
      
      private var var_2337:String;
      
      private var var_770:Array;
      
      private var var_2339:RoomThumbnailData;
      
      private var var_2215:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_770 = new Array();
         super();
         this.var_306 = param1.readInteger();
         this.var_732 = param1.readBoolean();
         this.var_817 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2219 = param1.readInteger();
         this.var_2049 = param1.readInteger();
         this.var_2336 = param1.readInteger();
         this.var_1513 = param1.readString();
         this.var_2338 = param1.readInteger();
         this.var_2340 = param1.readBoolean();
         this.var_763 = param1.readInteger();
         this.var_1377 = param1.readInteger();
         this.var_2337 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_770.push(_loc4_);
            _loc3_++;
         }
         this.var_2339 = new RoomThumbnailData(param1);
         this.var_2215 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_770 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_306;
      }
      
      public function get event() : Boolean
      {
         return this.var_732;
      }
      
      public function get roomName() : String
      {
         return this.var_817;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2219;
      }
      
      public function get userCount() : int
      {
         return this.var_2049;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2336;
      }
      
      public function get description() : String
      {
         return this.var_1513;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2338;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2340;
      }
      
      public function get score() : int
      {
         return this.var_763;
      }
      
      public function get categoryId() : int
      {
         return this.var_1377;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2337;
      }
      
      public function get tags() : Array
      {
         return this.var_770;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2339;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2215;
      }
   }
}

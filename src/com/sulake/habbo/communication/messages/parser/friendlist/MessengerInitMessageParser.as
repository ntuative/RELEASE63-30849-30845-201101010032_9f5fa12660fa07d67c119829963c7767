package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2475:int;
      
      private var var_2470:int;
      
      private var var_2472:int;
      
      private var var_2471:int;
      
      private var var_2474:int;
      
      private var var_2473:int;
      
      private var var_92:Array;
      
      private var var_211:Array;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_92 = new Array();
         this.var_211 = new Array();
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2475 = param1.readInteger();
         this.var_2470 = param1.readInteger();
         this.var_2472 = param1.readInteger();
         this.var_2471 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_92.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_211.push(new FriendData(param1));
            _loc4_++;
         }
         this.var_2474 = param1.readInteger();
         this.var_2473 = param1.readInteger();
         return true;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2475;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2470;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2472;
      }
      
      public function get friendRequestLimit() : int
      {
         return this.var_2474;
      }
      
      public function get friendRequestCount() : int
      {
         return this.var_2473;
      }
      
      public function get categories() : Array
      {
         return this.var_92;
      }
      
      public function get friends() : Array
      {
         return this.var_211;
      }
      
      public function get evenMoreExtendedFriendLimit() : int
      {
         return this.var_2471;
      }
   }
}

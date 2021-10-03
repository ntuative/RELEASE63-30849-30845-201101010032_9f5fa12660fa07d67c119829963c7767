package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_1827:Boolean;
      
      private var _roomId:int;
      
      private var var_817:String;
      
      private var var_2076:int;
      
      private var var_2075:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1827 = param1.readBoolean();
         this._roomId = param1.readInteger();
         this.var_817 = param1.readString();
         this.var_2076 = param1.readInteger();
         this.var_2075 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return this.var_1827;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_817;
      }
      
      public function get enterHour() : int
      {
         return this.var_2076;
      }
      
      public function get enterMinute() : int
      {
         return this.var_2075;
      }
   }
}

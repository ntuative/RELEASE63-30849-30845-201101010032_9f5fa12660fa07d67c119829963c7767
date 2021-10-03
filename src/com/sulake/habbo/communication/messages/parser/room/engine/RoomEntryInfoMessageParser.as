package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1621:Boolean;
      
      private var var_2233:int;
      
      private var var_372:Boolean;
      
      private var var_1036:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get guestRoom() : Boolean
      {
         return this.var_1621;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2233;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1036;
      }
      
      public function get owner() : Boolean
      {
         return this.var_372;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1036 != null)
         {
            this.var_1036.dispose();
            this.var_1036 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1621 = param1.readBoolean();
         if(this.var_1621)
         {
            this.var_2233 = param1.readInteger();
            this.var_372 = param1.readBoolean();
         }
         else
         {
            this.var_1036 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}

package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_306:int;
      
      private var var_2049:int;
      
      private var var_2449:Boolean;
      
      private var var_1971:int;
      
      private var _ownerName:String;
      
      private var var_112:RoomData;
      
      private var var_732:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_306 = param1.readInteger();
         this.var_2049 = param1.readInteger();
         this.var_2449 = param1.readBoolean();
         this.var_1971 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_112 = new RoomData(param1);
         this.var_732 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_112 != null)
         {
            this.var_112.dispose();
            this.var_112 = null;
         }
         if(this.var_732 != null)
         {
            this.var_732.dispose();
            this.var_732 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_306;
      }
      
      public function get userCount() : int
      {
         return this.var_2049;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2449;
      }
      
      public function get ownerId() : int
      {
         return this.var_1971;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_112;
      }
      
      public function get event() : RoomData
      {
         return this.var_732;
      }
   }
}

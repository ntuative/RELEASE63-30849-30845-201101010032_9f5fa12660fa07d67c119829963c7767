package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2141:String;
      
      private var var_2140:int;
      
      private var var_2138:int;
      
      private var var_2137:String;
      
      private var var_2139:int;
      
      private var var_1555:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2141 = param1.readString();
         this.var_2140 = param1.readInteger();
         this.var_2138 = param1.readInteger();
         this.var_2137 = param1.readString();
         this.var_2139 = param1.readInteger();
         this.var_1555 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2141;
      }
      
      public function get unitPort() : int
      {
         return this.var_2140;
      }
      
      public function get worldId() : int
      {
         return this.var_2138;
      }
      
      public function get castLibs() : String
      {
         return this.var_2137;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2139;
      }
      
      public function get nodeId() : int
      {
         return this.var_1555;
      }
   }
}

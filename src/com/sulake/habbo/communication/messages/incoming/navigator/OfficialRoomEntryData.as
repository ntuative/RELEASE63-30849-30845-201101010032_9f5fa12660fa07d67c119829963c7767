package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_955:int = 1;
      
      public static const const_788:int = 2;
      
      public static const const_573:int = 3;
      
      public static const const_1511:int = 4;
       
      
      private var _index:int;
      
      private var var_2048:String;
      
      private var var_2047:String;
      
      private var var_2051:Boolean;
      
      private var var_2052:String;
      
      private var var_921:String;
      
      private var var_2050:int;
      
      private var var_2049:int;
      
      private var _type:int;
      
      private var var_1945:String;
      
      private var var_802:GuestRoomData;
      
      private var var_801:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2048 = param1.readString();
         this.var_2047 = param1.readString();
         this.var_2051 = param1.readInteger() == 1;
         this.var_2052 = param1.readString();
         this.var_921 = param1.readString();
         this.var_2050 = param1.readInteger();
         this.var_2049 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_955)
         {
            this.var_1945 = param1.readString();
         }
         else if(this._type == const_573)
         {
            this.var_801 = new PublicRoomData(param1);
         }
         else if(this._type == const_788)
         {
            this.var_802 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_802 != null)
         {
            this.var_802.dispose();
            this.var_802 = null;
         }
         if(this.var_801 != null)
         {
            this.var_801.dispose();
            this.var_801 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2048;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2047;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2051;
      }
      
      public function get picText() : String
      {
         return this.var_2052;
      }
      
      public function get picRef() : String
      {
         return this.var_921;
      }
      
      public function get folderId() : int
      {
         return this.var_2050;
      }
      
      public function get tag() : String
      {
         return this.var_1945;
      }
      
      public function get userCount() : int
      {
         return this.var_2049;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_802;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_801;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_955)
         {
            return 0;
         }
         if(this.type == const_788)
         {
            return this.var_802.maxUserCount;
         }
         if(this.type == const_573)
         {
            return this.var_801.maxUsers;
         }
         return 0;
      }
   }
}

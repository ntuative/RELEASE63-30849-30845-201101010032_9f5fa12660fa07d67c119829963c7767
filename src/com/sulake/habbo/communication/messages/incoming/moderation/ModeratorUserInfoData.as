package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_1978:int;
      
      private var var_1976:int;
      
      private var var_735:Boolean;
      
      private var var_1977:int;
      
      private var var_1981:int;
      
      private var var_1979:int;
      
      private var var_1980:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_1978 = param1.readInteger();
         this.var_1976 = param1.readInteger();
         this.var_735 = param1.readBoolean();
         this.var_1977 = param1.readInteger();
         this.var_1981 = param1.readInteger();
         this.var_1979 = param1.readInteger();
         this.var_1980 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_1978;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_1976;
      }
      
      public function get online() : Boolean
      {
         return this.var_735;
      }
      
      public function get cfhCount() : int
      {
         return this.var_1977;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_1981;
      }
      
      public function get cautionCount() : int
      {
         return this.var_1979;
      }
      
      public function get banCount() : int
      {
         return this.var_1980;
      }
   }
}

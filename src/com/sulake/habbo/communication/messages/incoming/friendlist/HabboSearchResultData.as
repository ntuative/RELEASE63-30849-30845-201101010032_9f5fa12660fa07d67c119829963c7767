package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_1957:int;
      
      private var var_1828:String;
      
      private var var_2193:String;
      
      private var var_2192:Boolean;
      
      private var var_2197:Boolean;
      
      private var var_2196:int;
      
      private var var_2195:String;
      
      private var var_2194:String;
      
      private var var_1541:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1957 = param1.readInteger();
         this.var_1828 = param1.readString();
         this.var_2193 = param1.readString();
         this.var_2192 = param1.readBoolean();
         this.var_2197 = param1.readBoolean();
         param1.readString();
         this.var_2196 = param1.readInteger();
         this.var_2195 = param1.readString();
         this.var_2194 = param1.readString();
         this.var_1541 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_1957;
      }
      
      public function get avatarName() : String
      {
         return this.var_1828;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2193;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2192;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2197;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2196;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2195;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2194;
      }
      
      public function get realName() : String
      {
         return this.var_1541;
      }
   }
}

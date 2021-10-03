package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_597:String;
      
      private var var_913:String;
      
      private var var_2151:String;
      
      private var var_1541:String;
      
      private var var_2148:int;
      
      private var var_2149:String;
      
      private var var_2150:int;
      
      private var var_2147:int;
      
      private var var_2146:int;
      
      private var _respectLeft:int;
      
      private var var_756:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_597 = param1.readString();
         this.var_913 = param1.readString();
         this.var_2151 = param1.readString();
         this.var_1541 = param1.readString();
         this.var_2148 = param1.readInteger();
         this.var_2149 = param1.readString();
         this.var_2150 = param1.readInteger();
         this.var_2147 = param1.readInteger();
         this.var_2146 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_756 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_597;
      }
      
      public function get sex() : String
      {
         return this.var_913;
      }
      
      public function get customData() : String
      {
         return this.var_2151;
      }
      
      public function get realName() : String
      {
         return this.var_1541;
      }
      
      public function get tickets() : int
      {
         return this.var_2148;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2149;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2150;
      }
      
      public function get directMail() : int
      {
         return this.var_2147;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2146;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_756;
      }
   }
}

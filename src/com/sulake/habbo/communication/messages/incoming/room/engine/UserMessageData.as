package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1102:String = "M";
      
      public static const const_1305:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_159:Number = 0;
      
      private var var_160:Number = 0;
      
      private var var_240:int = 0;
      
      private var _name:String = "";
      
      private var var_2034:int = 0;
      
      private var var_913:String = "";
      
      private var var_597:String = "";
      
      private var var_2030:String = "";
      
      private var var_2033:int;
      
      private var var_2037:int = 0;
      
      private var var_2035:String = "";
      
      private var var_2031:int = 0;
      
      private var var_2036:int = 0;
      
      private var var_2032:String = "";
      
      private var var_155:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_155 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_155)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_159;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_155)
         {
            this.var_159 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_160;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_155)
         {
            this.var_160 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_240;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_155)
         {
            this.var_240 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_155)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_2034;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_155)
         {
            this.var_2034 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_913;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_155)
         {
            this.var_913 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_597;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_155)
         {
            this.var_597 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2030;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_155)
         {
            this.var_2030 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2033;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_155)
         {
            this.var_2033 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2037;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_155)
         {
            this.var_2037 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2035;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_155)
         {
            this.var_2035 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2031;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_155)
         {
            this.var_2031 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2036;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_155)
         {
            this.var_2036 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2032;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_155)
         {
            this.var_2032 = param1;
         }
      }
   }
}

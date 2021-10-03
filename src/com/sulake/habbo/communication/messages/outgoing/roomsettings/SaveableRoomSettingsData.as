package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1513:String;
      
      private var var_2219:int;
      
      private var _password:String;
      
      private var var_1377:int;
      
      private var var_2212:int;
      
      private var var_770:Array;
      
      private var var_2217:Array;
      
      private var var_2215:Boolean;
      
      private var var_2214:Boolean;
      
      private var var_2216:Boolean;
      
      private var var_2218:Boolean;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2215;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2215 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2214;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2214 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2216;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2216 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2218;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2218 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1513;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1513 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2219;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2219 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1377;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1377 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2212;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2212 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_770;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_770 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2217;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2217 = param1;
      }
   }
}

package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_159:Number = 0;
      
      private var var_160:Number = 0;
      
      private var var_2318:Number = 0;
      
      private var var_2322:Number = 0;
      
      private var var_2319:Number = 0;
      
      private var var_2323:Number = 0;
      
      private var var_240:int = 0;
      
      private var var_2321:int = 0;
      
      private var var_292:Array;
      
      private var var_2320:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_292 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_159 = param3;
         this.var_160 = param4;
         this.var_2318 = param5;
         this.var_240 = param6;
         this.var_2321 = param7;
         this.var_2322 = param8;
         this.var_2319 = param9;
         this.var_2323 = param10;
         this.var_2320 = param11;
         this.var_292 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_159;
      }
      
      public function get z() : Number
      {
         return this.var_160;
      }
      
      public function get localZ() : Number
      {
         return this.var_2318;
      }
      
      public function get targetX() : Number
      {
         return this.var_2322;
      }
      
      public function get targetY() : Number
      {
         return this.var_2319;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2323;
      }
      
      public function get dir() : int
      {
         return this.var_240;
      }
      
      public function get dirHead() : int
      {
         return this.var_2321;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2320;
      }
      
      public function get actions() : Array
      {
         return this.var_292.slice();
      }
   }
}

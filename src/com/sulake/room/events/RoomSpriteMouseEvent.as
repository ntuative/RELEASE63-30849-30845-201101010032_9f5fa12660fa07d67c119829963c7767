package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1573:String = "";
      
      private var var_1793:String = "";
      
      private var var_2038:String = "";
      
      private var var_2555:Number = 0;
      
      private var var_2557:Number = 0;
      
      private var var_2556:Number = 0;
      
      private var var_2554:Number = 0;
      
      private var var_2189:Boolean = false;
      
      private var var_2187:Boolean = false;
      
      private var var_2186:Boolean = false;
      
      private var var_2188:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1573 = param2;
         this.var_1793 = param3;
         this.var_2038 = param4;
         this.var_2555 = param5;
         this.var_2557 = param6;
         this.var_2556 = param7;
         this.var_2554 = param8;
         this.var_2189 = param9;
         this.var_2187 = param10;
         this.var_2186 = param11;
         this.var_2188 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1573;
      }
      
      public function get canvasId() : String
      {
         return this.var_1793;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2038;
      }
      
      public function get screenX() : Number
      {
         return this.var_2555;
      }
      
      public function get screenY() : Number
      {
         return this.var_2557;
      }
      
      public function get localX() : Number
      {
         return this.var_2556;
      }
      
      public function get localY() : Number
      {
         return this.var_2554;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2189;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2187;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2186;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2188;
      }
   }
}

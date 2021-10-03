package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_244:String = "ROE_MOUSE_CLICK";
      
      public static const const_1812:String = "ROE_MOUSE_ENTER";
      
      public static const const_406:String = "ROE_MOUSE_MOVE";
      
      public static const const_1788:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1761:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_506:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1573:String = "";
      
      private var var_2187:Boolean;
      
      private var var_2189:Boolean;
      
      private var var_2186:Boolean;
      
      private var var_2188:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1573 = param2;
         this.var_2187 = param5;
         this.var_2189 = param6;
         this.var_2186 = param7;
         this.var_2188 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1573;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2187;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2189;
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

package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_806:String = "RWCM_MESSAGE_CHAT";
      
      public static const const_126:int = 0;
      
      public static const const_123:int = 1;
      
      public static const const_113:int = 2;
       
      
      private var var_1266:int = 0;
      
      private var _text:String = "";
      
      private var var_2142:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         this._text = param2;
         this.var_1266 = param3;
         this.var_2142 = param4;
      }
      
      public function get chatType() : int
      {
         return this.var_1266;
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get recipientName() : String
      {
         return this.var_2142;
      }
   }
}

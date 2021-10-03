package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2604:int;
      
      private var var_2603:int;
      
      private var var_2601:int;
      
      private var var_2602:String;
      
      private var var_1468:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2604 = param1.readInteger();
         this.var_2603 = param1.readInteger();
         this.var_2601 = param1.readInteger();
         this.var_2602 = param1.readString();
         this.var_1468 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2604;
      }
      
      public function get minute() : int
      {
         return this.var_2603;
      }
      
      public function get chatterId() : int
      {
         return this.var_2601;
      }
      
      public function get chatterName() : String
      {
         return this.var_2602;
      }
      
      public function get msg() : String
      {
         return this.var_1468;
      }
   }
}

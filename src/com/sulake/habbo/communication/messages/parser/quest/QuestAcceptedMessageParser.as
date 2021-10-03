package com.sulake.habbo.communication.messages.parser.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestAcceptedMessageParser implements IMessageParser
   {
       
      
      private var var_1530:String;
      
      private var var_986:QuestMessageData;
      
      public function QuestAcceptedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1530 = "";
         if(this.var_986)
         {
            this.var_986.dispose();
         }
         this.var_986 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1530 = param1.readString();
         this.var_986 = new QuestMessageData(param1);
         return true;
      }
      
      public function get campaignId() : String
      {
         return this.var_1530;
      }
      
      public function get questData() : QuestMessageData
      {
         return this.var_986;
      }
   }
}

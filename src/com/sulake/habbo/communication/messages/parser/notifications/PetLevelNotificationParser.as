package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1810:int;
      
      private var var_2610:String;
      
      private var var_1322:int;
      
      private var var_597:String;
      
      private var var_1347:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1810 = param1.readInteger();
         this.var_2610 = param1.readString();
         this.var_1322 = param1.readInteger();
         this.var_597 = param1.readString();
         this.var_1347 = param1.readInteger();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1810;
      }
      
      public function get petName() : String
      {
         return this.var_2610;
      }
      
      public function get level() : int
      {
         return this.var_1322;
      }
      
      public function get figure() : String
      {
         return this.var_597;
      }
      
      public function get petType() : int
      {
         return this.var_1347;
      }
   }
}

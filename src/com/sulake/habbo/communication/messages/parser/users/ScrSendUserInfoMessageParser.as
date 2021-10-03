package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1600:int = 1;
      
      public static const const_1369:int = 2;
       
      
      private var var_845:String;
      
      private var var_2401:int;
      
      private var var_2399:int;
      
      private var var_2400:int;
      
      private var var_2402:int;
      
      private var var_2403:Boolean;
      
      private var var_2079:Boolean;
      
      private var var_2080:int;
      
      private var var_2082:int;
      
      private var var_2405:Boolean;
      
      private var var_2404:int;
      
      private var var_2398:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_845 = param1.readString();
         this.var_2401 = param1.readInteger();
         this.var_2399 = param1.readInteger();
         this.var_2400 = param1.readInteger();
         this.var_2402 = param1.readInteger();
         this.var_2403 = param1.readBoolean();
         this.var_2079 = param1.readBoolean();
         this.var_2080 = param1.readInteger();
         this.var_2082 = param1.readInteger();
         this.var_2405 = param1.readBoolean();
         this.var_2404 = param1.readInteger();
         this.var_2398 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_845;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2401;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2399;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2400;
      }
      
      public function get responseType() : int
      {
         return this.var_2402;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2403;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2079;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2080;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2082;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2405;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2404;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2398;
      }
   }
}

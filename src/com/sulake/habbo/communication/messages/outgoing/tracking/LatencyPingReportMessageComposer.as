package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2061:int;
      
      private var var_2059:int;
      
      private var var_2060:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2061 = param1;
         this.var_2059 = param2;
         this.var_2060 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2061,this.var_2059,this.var_2060];
      }
      
      public function dispose() : void
      {
      }
   }
}

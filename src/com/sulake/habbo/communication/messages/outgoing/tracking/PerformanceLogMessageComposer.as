package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2069:int = 0;
      
      private var var_1354:String = "";
      
      private var var_1716:String = "";
      
      private var var_2072:String = "";
      
      private var var_2071:String = "";
      
      private var var_1525:int = 0;
      
      private var var_2068:int = 0;
      
      private var var_2073:int = 0;
      
      private var var_1355:int = 0;
      
      private var var_2070:int = 0;
      
      private var var_1357:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2069 = param1;
         this.var_1354 = param2;
         this.var_1716 = param3;
         this.var_2072 = param4;
         this.var_2071 = param5;
         if(param6)
         {
            this.var_1525 = 1;
         }
         else
         {
            this.var_1525 = 0;
         }
         this.var_2068 = param7;
         this.var_2073 = param8;
         this.var_1355 = param9;
         this.var_2070 = param10;
         this.var_1357 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2069,this.var_1354,this.var_1716,this.var_2072,this.var_2071,this.var_1525,this.var_2068,this.var_2073,this.var_1355,this.var_2070,this.var_1357];
      }
   }
}

package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1770:IID;
      
      private var var_687:Boolean;
      
      private var var_1116:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1770 = param1;
         this.var_1116 = new Array();
         this.var_687 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1770;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_687;
      }
      
      public function get receivers() : Array
      {
         return this.var_1116;
      }
      
      public function dispose() : void
      {
         if(!this.var_687)
         {
            this.var_687 = true;
            this.var_1770 = null;
            while(this.var_1116.length > 0)
            {
               this.var_1116.pop();
            }
            this.var_1116 = null;
         }
      }
   }
}

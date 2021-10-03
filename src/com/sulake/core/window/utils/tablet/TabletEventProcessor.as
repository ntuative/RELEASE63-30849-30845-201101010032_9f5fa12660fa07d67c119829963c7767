package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2749:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         var_132 = param1.desktop;
         var_78 = param1.var_1179 as WindowController;
         _lastClickTarget = param1.var_1178 as WindowController;
         var_150 = param1.renderer;
         var_776 = param1.var_1176;
         param2.begin();
         param2.end();
         param1.desktop = var_132;
         param1.var_1179 = var_78;
         param1.var_1178 = _lastClickTarget;
         param1.renderer = var_150;
         param1.var_1176 = var_776;
      }
   }
}

package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2713:uint;
      
      private var var_131:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_229:IWindowContext;
      
      private var var_1114:IMouseDraggingService;
      
      private var var_1110:IMouseScalingService;
      
      private var var_1112:IMouseListenerService;
      
      private var var_1115:IFocusManagerService;
      
      private var var_1113:IToolTipAgentService;
      
      private var var_1111:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2713 = 0;
         this.var_131 = param2;
         this.var_229 = param1;
         this.var_1114 = new WindowMouseDragger(param2);
         this.var_1110 = new WindowMouseScaler(param2);
         this.var_1112 = new WindowMouseListener(param2);
         this.var_1115 = new FocusManager(param2);
         this.var_1113 = new WindowToolTipAgent(param2);
         this.var_1111 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1114 != null)
         {
            this.var_1114.dispose();
            this.var_1114 = null;
         }
         if(this.var_1110 != null)
         {
            this.var_1110.dispose();
            this.var_1110 = null;
         }
         if(this.var_1112 != null)
         {
            this.var_1112.dispose();
            this.var_1112 = null;
         }
         if(this.var_1115 != null)
         {
            this.var_1115.dispose();
            this.var_1115 = null;
         }
         if(this.var_1113 != null)
         {
            this.var_1113.dispose();
            this.var_1113 = null;
         }
         if(this.var_1111 != null)
         {
            this.var_1111.dispose();
            this.var_1111 = null;
         }
         this.var_131 = null;
         this.var_229 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1114;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1110;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1112;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1115;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1113;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1111;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}

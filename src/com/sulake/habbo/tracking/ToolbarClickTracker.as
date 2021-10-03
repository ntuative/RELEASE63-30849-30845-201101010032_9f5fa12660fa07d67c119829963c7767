package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1201:IHabboTracking;
      
      private var var_1457:Boolean = false;
      
      private var var_2255:int = 0;
      
      private var var_1641:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1201 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1201 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1457 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2255 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1457)
         {
            return;
         }
         ++this.var_1641;
         if(this.var_1641 <= this.var_2255)
         {
            this.var_1201.track("toolbar",param1);
         }
      }
   }
}

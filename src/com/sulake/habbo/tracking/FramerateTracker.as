package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1718:int;
      
      private var var_2530:int;
      
      private var var_1126:int;
      
      private var var_478:Number;
      
      private var var_2528:Boolean;
      
      private var var_2529:int;
      
      private var var_1791:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2530 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2529 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2528 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_1126;
         if(this.var_1126 == 1)
         {
            this.var_478 = param1;
            this.var_1718 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_1126);
            this.var_478 = this.var_478 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2528 && param3 - this.var_1718 >= this.var_2530 && this.var_1791 < this.var_2529)
         {
            _loc5_ = 1000 / this.var_478;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1791;
            this.var_1718 = param3;
            this.var_1126 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}

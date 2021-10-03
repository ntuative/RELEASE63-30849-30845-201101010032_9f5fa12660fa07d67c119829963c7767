package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const ANIMATION_ID_ROLL:int = 3;
      
      private static const const_1141:int = 2;
      
      private static const const_1142:int = 1;
      
      private static const ANIMATION_DURATION:int = 15;
       
      
      private var var_277:Array;
      
      private var var_977:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_277 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1141)
         {
            this.var_277 = new Array();
            this.var_277.push(const_1142);
            this.var_977 = ANIMATION_DURATION;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(this.var_977 > 0)
         {
            --this.var_977;
         }
         if(this.var_977 == 0)
         {
            if(this.var_277.length > 0)
            {
               super.setAnimation(this.var_277.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}

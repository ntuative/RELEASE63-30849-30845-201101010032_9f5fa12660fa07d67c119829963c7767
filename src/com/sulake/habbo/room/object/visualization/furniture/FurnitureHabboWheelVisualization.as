package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_839:int = 10;
      
      private static const const_551:int = 20;
      
      private static const const_1175:int = 31;
      
      private static const ANIMATION_ID_ROLL:int = 32;
       
      
      private var var_277:Array;
      
      private var var_730:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_277 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_730)
            {
               this.var_730 = true;
               this.var_277 = new Array();
               this.var_277.push(const_1175);
               this.var_277.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_839)
         {
            if(this.var_730)
            {
               this.var_730 = false;
               this.var_277 = new Array();
               this.var_277.push(const_839 + param1);
               this.var_277.push(const_551 + param1);
               this.var_277.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
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

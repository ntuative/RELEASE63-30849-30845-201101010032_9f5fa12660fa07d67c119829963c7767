package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_839:int = 20;
      
      private static const const_551:int = 10;
      
      private static const const_1175:int = 31;
      
      private static const ANIMATION_ID_ROLL:int = 32;
      
      private static const ANIMATION_ID_OFF:int = 30;
       
      
      private var var_277:Array;
      
      private var var_730:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_277 = new Array();
         super();
         super.setAnimation(ANIMATION_ID_OFF);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
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
         if(param1 > 0 && param1 <= const_551)
         {
            if(this.var_730)
            {
               this.var_730 = false;
               this.var_277 = new Array();
               if(_direction == 2)
               {
                  this.var_277.push(const_839 + 5 - param1);
                  this.var_277.push(const_551 + 5 - param1);
               }
               else
               {
                  this.var_277.push(const_839 + param1);
                  this.var_277.push(const_551 + param1);
               }
               this.var_277.push(ANIMATION_ID_OFF);
               return;
            }
            super.setAnimation(ANIMATION_ID_OFF);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(11))
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

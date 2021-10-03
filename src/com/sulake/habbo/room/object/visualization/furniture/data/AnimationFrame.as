package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_442:int = -1;
      
      public static const const_1006:int = -1;
       
      
      private var _id:int = 0;
      
      private var _x:int = 0;
      
      private var var_159:int = 0;
      
      private var var_2054:int = 1;
      
      private var var_859:int = 1;
      
      private var var_1628:int = 1;
      
      private var var_2244:int = -1;
      
      private var var_2245:int = 0;
      
      private var var_2243:Boolean = false;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Boolean, param7:int = -1, param8:int = 0)
      {
         super();
         this._id = param1;
         this._x = param2;
         this.var_159 = param3;
         this.var_2243 = param6;
         if(param4 < 1)
         {
            param4 = 1;
         }
         this.var_2054 = param4;
         if(param5 < 0)
         {
            param5 = const_442;
         }
         this.var_859 = param5;
         this.var_1628 = param5;
         if(param7 >= 0)
         {
            this.var_2244 = param7;
            this.var_2245 = param8;
         }
      }
      
      public function get id() : int
      {
         if(this._id >= 0)
         {
            return this._id;
         }
         return -this._id * Math.random();
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function get y() : int
      {
         return this.var_159;
      }
      
      public function get repeats() : int
      {
         return this.var_2054;
      }
      
      public function get frameRepeats() : int
      {
         return this.var_859;
      }
      
      public function get isLastFrame() : Boolean
      {
         return this.var_2243;
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(this.var_859 < 0)
         {
            return const_442;
         }
         return this.var_1628;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(this.var_859 > 0 && param1 > this.var_859)
         {
            param1 = this.var_859;
         }
         this.var_1628 = param1;
      }
      
      public function get activeSequence() : int
      {
         return this.var_2244;
      }
      
      public function get activeSequenceOffset() : int
      {
         return this.var_2245;
      }
   }
}

package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2442:Number = 0.0;
      
      private var var_2443:Number = 0.0;
      
      private var var_2468:Number = 0.0;
      
      private var var_2469:Number = 0.0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2442 = param1;
         this.var_2443 = param2;
         this.var_2468 = param3;
         this.var_2469 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2442;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2443;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2468;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2469;
      }
   }
}
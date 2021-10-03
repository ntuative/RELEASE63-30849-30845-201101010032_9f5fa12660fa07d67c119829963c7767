package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_728:String = "";
      
      public static const const_487:int = 0;
      
      public static const const_535:int = 255;
      
      public static const const_748:Boolean = false;
      
      public static const const_470:int = 0;
      
      public static const const_416:int = 0;
      
      public static const const_541:int = 0;
      
      public static const const_1089:int = 1;
      
      public static const const_909:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_1945:String = "";
      
      private var var_1788:int = 0;
      
      private var var_1946:int = 255;
      
      private var var_2621:Boolean = false;
      
      private var var_2620:int = 0;
      
      private var var_2619:int = 0;
      
      private var var_2618:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_1945 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_1945;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1788 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1788;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_1946 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_1946;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2621 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2621;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2620 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2620;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2619 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2619;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2618 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2618;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}

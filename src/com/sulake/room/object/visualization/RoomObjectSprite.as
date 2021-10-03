package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_956:int = 0;
       
      
      private var var_362:BitmapData = null;
      
      private var var_1823:String = "";
      
      private var var_353:Boolean = true;
      
      private var var_1945:String = "";
      
      private var var_1946:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_1944:String = "normal";
      
      private var var_1217:Boolean = false;
      
      private var var_1216:Boolean = false;
      
      private var _offset:Point;
      
      private var _width:int = 0;
      
      private var _height:int = 0;
      
      private var var_1051:Number = 0;
      
      private var var_1947:Boolean = false;
      
      private var var_1948:Boolean = true;
      
      private var var_1949:Boolean = false;
      
      private var _updateID:int = 0;
      
      private var _instanceId:int = 0;
      
      private var var_1451:Array;
      
      public function RoomObjectSprite()
      {
         this._offset = new Point(0,0);
         this.var_1451 = [];
         super();
         this._instanceId = var_956++;
      }
      
      public function dispose() : void
      {
         this.var_362 = null;
         this._width = 0;
         this._height = 0;
      }
      
      public function get asset() : BitmapData
      {
         return this.var_362;
      }
      
      public function get assetName() : String
      {
         return this.var_1823;
      }
      
      public function get visible() : Boolean
      {
         return this.var_353;
      }
      
      public function get tag() : String
      {
         return this.var_1945;
      }
      
      public function get alpha() : int
      {
         return this.var_1946;
      }
      
      public function get color() : int
      {
         return this._color;
      }
      
      public function get blendMode() : String
      {
         return this.var_1944;
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1216;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1217;
      }
      
      public function get offsetX() : int
      {
         return this._offset.x;
      }
      
      public function get offsetY() : int
      {
         return this._offset.y;
      }
      
      public function get width() : int
      {
         return this._width;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get relativeDepth() : Number
      {
         return this.var_1051;
      }
      
      public function get varyingDepth() : Boolean
      {
         return this.var_1947;
      }
      
      public function get capturesMouse() : Boolean
      {
         return this.var_1948;
      }
      
      public function get clickHandling() : Boolean
      {
         return this.var_1949;
      }
      
      public function get instanceId() : int
      {
         return this._instanceId;
      }
      
      public function get updateId() : int
      {
         return this._updateID;
      }
      
      public function get filters() : Array
      {
         return this.var_1451;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            this._width = param1.width;
            this._height = param1.height;
         }
         this.var_362 = param1;
         ++this._updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         this.var_1823 = param1;
         ++this._updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.var_353 = param1;
         ++this._updateID;
      }
      
      public function set tag(param1:String) : void
      {
         this.var_1945 = param1;
         ++this._updateID;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         this.var_1946 = param1;
         ++this._updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         this._color = param1;
         ++this._updateID;
      }
      
      public function set blendMode(param1:String) : void
      {
         this.var_1944 = param1;
         ++this._updateID;
      }
      
      public function set filters(param1:Array) : void
      {
         this.var_1451 = param1;
         ++this._updateID;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         this.var_1217 = param1;
         ++this._updateID;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         this.var_1216 = param1;
         ++this._updateID;
      }
      
      public function set offsetX(param1:int) : void
      {
         this._offset.x = param1;
         ++this._updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         this._offset.y = param1;
         ++this._updateID;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         this.var_1051 = param1;
         ++this._updateID;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         this.var_1947 = param1;
         ++this._updateID;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         this.var_1948 = param1;
         ++this._updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         this.var_1949 = param1;
         ++this._updateID;
      }
   }
}

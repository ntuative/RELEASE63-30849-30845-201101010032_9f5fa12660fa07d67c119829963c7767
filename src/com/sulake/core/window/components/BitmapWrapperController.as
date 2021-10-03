package com.sulake.core.window.components
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.WindowContext;
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.graphics.WindowRedrawFlag;
   import com.sulake.core.window.utils.IBitmapDataContainer;
   import com.sulake.core.window.utils.PropertyStruct;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class BitmapWrapperController extends WindowController implements IBitmapWrapperWindow, IBitmapDataContainer
   {
      
      protected static const const_1127:String = "handle_bitmap_disposing";
      
      protected static const const_1542:Boolean = true;
      
      protected static const const_1128:String = "bitmap_asset_name";
      
      protected static const const_1541:String = null;
       
      
      protected var _bitmapData:BitmapData;
      
      protected var var_513:Boolean = true;
      
      protected var var_1186:String;
      
      public function BitmapWrapperController(param1:String, param2:uint, param3:uint, param4:uint, param5:WindowContext, param6:Rectangle, param7:IWindow, param8:Function = null, param9:Array = null, param10:Array = null, param11:uint = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      public function get bitmap() : BitmapData
      {
         return this._bitmapData;
      }
      
      public function set bitmap(param1:BitmapData) : void
      {
         if(this.var_513 && this._bitmapData && param1 != this._bitmapData)
         {
            this._bitmapData.dispose();
         }
         this._bitmapData = param1;
         var_15.invalidate(this,var_11,WindowRedrawFlag.const_72);
      }
      
      public function get bitmapData() : BitmapData
      {
         return this._bitmapData;
      }
      
      public function set bitmapData(param1:BitmapData) : void
      {
         this.bitmap = param1;
      }
      
      public function get disposesBitmap() : Boolean
      {
         return this.var_513;
      }
      
      public function set disposesBitmap(param1:Boolean) : void
      {
         this.var_513 = param1;
      }
      
      override public function clone() : IWindow
      {
         var _loc1_:BitmapWrapperController = super.clone() as BitmapWrapperController;
         _loc1_._bitmapData = this._bitmapData;
         _loc1_.var_513 = this.var_513;
         _loc1_.var_1186 = this.var_1186;
         return _loc1_;
      }
      
      override public function dispose() : void
      {
         if(this._bitmapData)
         {
            if(this.var_513)
            {
               this._bitmapData.dispose();
            }
            this._bitmapData = null;
         }
         super.dispose();
      }
      
      override public function get properties() : Array
      {
         var _loc1_:Array = super.properties;
         _loc1_.push(new PropertyStruct(const_1127,this.var_513,PropertyStruct.const_50,this.var_513 != const_1542));
         _loc1_.push(new PropertyStruct(const_1128,this.var_1186,PropertyStruct.const_84,this.var_1186 != const_1541));
         return _loc1_;
      }
      
      override public function set properties(param1:Array) : void
      {
         var _loc2_:* = null;
         for each(_loc2_ in param1)
         {
            switch(_loc2_.key)
            {
               case const_1127:
                  this.var_513 = _loc2_.value as Boolean;
                  break;
               case const_1128:
                  this.var_1186 = _loc2_.value as String;
                  break;
            }
         }
         super.properties = param1;
      }
   }
}

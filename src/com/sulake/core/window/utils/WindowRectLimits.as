package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   
   public class WindowRectLimits implements IRectLimiter
   {
       
      
      private var var_438:int = -2.147483648E9;
      
      private var var_437:int = 2.147483647E9;
      
      private var var_436:int = -2.147483648E9;
      
      private var var_435:int = 2.147483647E9;
      
      private var _target:IWindow;
      
      public function WindowRectLimits(param1:IWindow)
      {
         super();
         this._target = param1;
      }
      
      public function get minWidth() : int
      {
         return this.var_438;
      }
      
      public function get maxWidth() : int
      {
         return this.var_437;
      }
      
      public function get minHeight() : int
      {
         return this.var_436;
      }
      
      public function get maxHeight() : int
      {
         return this.var_435;
      }
      
      public function set minWidth(param1:int) : void
      {
         this.var_438 = param1;
         if(this.var_438 > int.MIN_VALUE && !this._target.disposed && this._target.width < this.var_438)
         {
            this._target.width = this.var_438;
         }
      }
      
      public function set maxWidth(param1:int) : void
      {
         this.var_437 = param1;
         if(this.var_437 < int.MAX_VALUE && !this._target.disposed && this._target.width > this.var_437)
         {
            this._target.width = this.var_437;
         }
      }
      
      public function set minHeight(param1:int) : void
      {
         this.var_436 = param1;
         if(this.var_436 > int.MIN_VALUE && !this._target.disposed && this._target.height < this.var_436)
         {
            this._target.height = this.var_436;
         }
      }
      
      public function set maxHeight(param1:int) : void
      {
         this.var_435 = param1;
         if(this.var_435 < int.MAX_VALUE && !this._target.disposed && this._target.height > this.var_435)
         {
            this._target.height = this.var_435;
         }
      }
      
      public function get isEmpty() : Boolean
      {
         return this.var_438 == int.MIN_VALUE && this.var_437 == int.MAX_VALUE && this.var_436 == int.MIN_VALUE && this.var_435 == int.MAX_VALUE;
      }
      
      public function setEmpty() : void
      {
         this.var_438 = int.MIN_VALUE;
         this.var_437 = int.MAX_VALUE;
         this.var_436 = int.MIN_VALUE;
         this.var_435 = int.MAX_VALUE;
      }
      
      public function clone(param1:IWindow) : WindowRectLimits
      {
         var _loc2_:WindowRectLimits = new WindowRectLimits(param1);
         _loc2_.var_438 = this.var_438;
         _loc2_.var_437 = this.var_437;
         _loc2_.var_436 = this.var_436;
         _loc2_.var_435 = this.var_435;
         return _loc2_;
      }
   }
}

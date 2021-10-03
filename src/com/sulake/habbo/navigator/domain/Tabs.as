package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_345:int = 1;
      
      public static const const_254:int = 2;
      
      public static const const_277:int = 3;
      
      public static const const_356:int = 4;
      
      public static const const_249:int = 5;
      
      public static const const_323:int = 1;
      
      public static const const_674:int = 2;
      
      public static const const_639:int = 3;
      
      public static const const_727:int = 4;
      
      public static const const_221:int = 5;
      
      public static const const_634:int = 6;
      
      public static const const_640:int = 7;
      
      public static const const_202:int = 8;
      
      public static const const_341:int = 9;
      
      public static const const_1807:int = 10;
      
      public static const const_740:int = 11;
      
      public static const const_492:int = 12;
       
      
      private var var_404:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_404 = new Array();
         this.var_404.push(new Tab(this._navigator,const_345,const_492,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_446));
         this.var_404.push(new Tab(this._navigator,const_254,const_323,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_446));
         this.var_404.push(new Tab(this._navigator,const_356,const_740,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_925));
         this.var_404.push(new Tab(this._navigator,const_277,const_221,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_446));
         this.var_404.push(new Tab(this._navigator,const_249,const_202,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_656));
         this.setSelectedTab(const_345);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_356;
      }
      
      public function get tabs() : Array
      {
         return this.var_404;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_404)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_404)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_404)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}

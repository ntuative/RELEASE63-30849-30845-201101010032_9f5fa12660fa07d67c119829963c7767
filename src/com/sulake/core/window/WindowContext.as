package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IMouseCursor;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseCursorControl;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_488:uint = 0;
      
      public static const const_1296:uint = 1;
      
      public static const const_1609:int = 0;
      
      public static const const_1765:int = 1;
      
      public static const const_1794:int = 2;
      
      public static const const_1766:int = 3;
      
      public static const const_1325:int = 4;
      
      public static const const_347:int = 5;
      
      public static var var_1441:IMouseCursor;
      
      public static var var_352:IEventQueue;
      
      private static var var_567:IEventProcessor;
      
      private static var var_1651:uint = const_488;
      
      private static var stage:Stage;
      
      private static var var_150:IWindowRenderer;
       
      
      private var _eventProcessorState:EventProcessorState;
      
      private var var_2273:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_173:DisplayObjectContainer;
      
      protected var var_2725:Boolean = true;
      
      protected var var_1183:Error;
      
      protected var var_1925:int = -1;
      
      protected var var_1187:IInternalWindowServices;
      
      protected var var_1444:IWindowParser;
      
      protected var var_2670:IWindowFactory;
      
      protected var var_132:IDesktopWindow;
      
      protected var var_1445:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_514:Boolean = false;
      
      private var var_2274:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_150 = param2;
         this._localization = param4;
         this.var_173 = param5;
         this.var_1187 = new ServiceManager(this,param5);
         this.var_2670 = param3;
         this.var_1444 = new WindowParser(this);
         this.var_2273 = param7;
         if(!stage)
         {
            if(this.var_173 is Stage)
            {
               stage = this.var_173 as Stage;
            }
            else if(this.var_173.stage)
            {
               stage = this.var_173.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_132 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_173.addChild(this.var_132.getDisplayObject());
         this.var_173.doubleClickEnabled = true;
         this.var_173.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this._eventProcessorState = new EventProcessorState(var_150,this.var_132,this.var_132,null,this.var_2273);
         inputMode = const_488;
         this.var_1445 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1651;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_352)
         {
            if(var_352 is IDisposable)
            {
               IDisposable(var_352).dispose();
            }
         }
         if(var_567)
         {
            if(var_567 is IDisposable)
            {
               IDisposable(var_567).dispose();
            }
         }
         switch(value)
         {
            case const_488:
               var_352 = new MouseEventQueue(stage);
               var_567 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1296:
               var_352 = new TabletEventQueue(stage);
               var_567 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_488;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_173.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_173.removeChild(IGraphicContextHost(this.var_132).getGraphicContext(true) as DisplayObject);
            this.var_132.destroy();
            this.var_132 = null;
            this.var_1445.destroy();
            this.var_1445 = null;
            if(this.var_1187 is IDisposable)
            {
               IDisposable(this.var_1187).dispose();
            }
            this.var_1187 = null;
            this.var_1444.dispose();
            this.var_1444 = null;
            var_150 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1183;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_1925;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1183 = param2;
         this.var_1925 = param1;
         if(this.var_2725)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1183 = null;
         this.var_1925 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1187;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1444;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_2670;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_132;
      }
      
      public function getMouseCursor() : IMouseCursor
      {
         if(var_1441 == null)
         {
            var_1441 = new MouseCursorControl(this.var_173);
         }
         return var_1441;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_132.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:Class = Classes.getWindowClassByType(param3);
         if(_loc12_ == null)
         {
            this.handleError(WindowContext.const_1325,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1445;
            }
         }
         var _loc13_:IWindow = new _loc12_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_132,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc13_.caption = param2;
         }
         return _loc13_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_132)
         {
            this.var_132 = null;
         }
         if(param1.state != WindowState.const_471)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_150.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_514 = true;
         if(this.var_1183)
         {
            throw this.var_1183;
         }
         var_567.process(this._eventProcessorState,var_352);
         this.var_514 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2274 = true;
         var_150.update(param1);
         this.var_2274 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_132 != null && !this.var_132.disposed)
         {
            if(this.var_173 is Stage)
            {
               this.var_132.width = Stage(this.var_173).stageWidth;
               this.var_132.height = Stage(this.var_173).stageHeight;
            }
            else
            {
               this.var_132.width = this.var_173.width;
               this.var_132.height = this.var_173.height;
            }
         }
      }
   }
}

package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1480:String = "WE_CREATE";
      
      public static const const_1322:String = "WE_CREATED";
      
      public static const const_1418:String = "WE_DESTROY";
      
      public static const const_298:String = "WE_DESTROYED";
      
      public static const const_1312:String = "WE_OPEN";
      
      public static const const_1507:String = "WE_OPENED";
      
      public static const const_1499:String = "WE_CLOSE";
      
      public static const const_1460:String = "WE_CLOSED";
      
      public static const const_1268:String = "WE_FOCUS";
      
      public static const const_181:String = "WE_FOCUSED";
      
      public static const const_1481:String = "WE_UNFOCUS";
      
      public static const const_1352:String = "WE_UNFOCUSED";
      
      public static const const_1419:String = "WE_ACTIVATE";
      
      public static const const_1517:String = "WE_ACTIVATED";
      
      public static const const_1502:String = "WE_DEACTIVATE";
      
      public static const const_1011:String = "WE_DEACTIVATED";
      
      public static const const_419:String = "WE_SELECT";
      
      public static const const_59:String = "WE_SELECTED";
      
      public static const const_614:String = "WE_UNSELECT";
      
      public static const const_746:String = "WE_UNSELECTED";
      
      public static const const_1746:String = "WE_ATTACH";
      
      public static const const_1719:String = "WE_ATTACHED";
      
      public static const const_1641:String = "WE_DETACH";
      
      public static const const_1621:String = "WE_DETACHED";
      
      public static const const_1348:String = "WE_LOCK";
      
      public static const const_1377:String = "WE_LOCKED";
      
      public static const const_1275:String = "WE_UNLOCK";
      
      public static const const_1363:String = "WE_UNLOCKED";
      
      public static const const_738:String = "WE_ENABLE";
      
      public static const const_297:String = "WE_ENABLED";
      
      public static const const_577:String = "WE_DISABLE";
      
      public static const const_233:String = "WE_DISABLED";
      
      public static const const_1300:String = "WE_RELOCATE";
      
      public static const const_377:String = "WE_RELOCATED";
      
      public static const const_1506:String = "WE_RESIZE";
      
      public static const const_44:String = "WE_RESIZED";
      
      public static const const_1338:String = "WE_MINIMIZE";
      
      public static const const_1472:String = "WE_MINIMIZED";
      
      public static const const_1354:String = "WE_MAXIMIZE";
      
      public static const const_1534:String = "WE_MAXIMIZED";
      
      public static const const_1318:String = "WE_RESTORE";
      
      public static const const_1423:String = "WE_RESTORED";
      
      public static const const_1808:String = "WE_ARRANGE";
      
      public static const const_1805:String = "WE_ARRANGED";
      
      public static const const_98:String = "WE_UPDATE";
      
      public static const const_1614:String = "WE_UPDATED";
      
      public static const const_1734:String = "WE_CHILD_RELOCATE";
      
      public static const const_408:String = "WE_CHILD_RELOCATED";
      
      public static const const_1639:String = "WE_CHILD_RESIZE";
      
      public static const const_295:String = "WE_CHILD_RESIZED";
      
      public static const const_1700:String = "WE_CHILD_REMOVE";
      
      public static const const_413:String = "WE_CHILD_REMOVED";
      
      public static const const_1791:String = "WE_PARENT_RELOCATE";
      
      public static const const_1823:String = "WE_PARENT_RELOCATED";
      
      public static const const_1824:String = "WE_PARENT_RESIZE";
      
      public static const const_1368:String = "WE_PARENT_RESIZED";
      
      public static const const_167:String = "WE_OK";
      
      public static const const_677:String = "WE_CANCEL";
      
      public static const const_104:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_501:String = "WE_SCROLL";
      
      public static const const_144:String = "";
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_1939:IWindow;
      
      protected var var_1940:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_1939 = param3;
         this.var_1940 = false;
         super(param1,param4,param5);
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_1939;
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(this._type,this.window,this.related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            this.var_1940 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1940;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
   }
}

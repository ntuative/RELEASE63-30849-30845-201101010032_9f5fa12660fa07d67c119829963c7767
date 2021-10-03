package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1387:String = "WN_CRETAE";
      
      public static const const_1447:String = "WN_CREATED";
      
      public static const const_929:String = "WN_DESTROY";
      
      public static const const_1027:String = "WN_DESTROYED";
      
      public static const const_1045:String = "WN_OPEN";
      
      public static const const_907:String = "WN_OPENED";
      
      public static const const_1097:String = "WN_CLOSE";
      
      public static const const_919:String = "WN_CLOSED";
      
      public static const const_998:String = "WN_FOCUS";
      
      public static const const_922:String = "WN_FOCUSED";
      
      public static const const_900:String = "WN_UNFOCUS";
      
      public static const const_941:String = "WN_UNFOCUSED";
      
      public static const const_1058:String = "WN_ACTIVATE";
      
      public static const const_380:String = "WN_ACTVATED";
      
      public static const const_1112:String = "WN_DEACTIVATE";
      
      public static const const_946:String = "WN_DEACTIVATED";
      
      public static const const_460:String = "WN_SELECT";
      
      public static const const_329:String = "WN_SELECTED";
      
      public static const const_809:String = "WN_UNSELECT";
      
      public static const const_724:String = "WN_UNSELECTED";
      
      public static const const_1113:String = "WN_LOCK";
      
      public static const const_1039:String = "WN_LOCKED";
      
      public static const const_981:String = "WN_UNLOCK";
      
      public static const const_940:String = "WN_UNLOCKED";
      
      public static const const_1095:String = "WN_ENABLE";
      
      public static const const_688:String = "WN_ENABLED";
      
      public static const const_974:String = "WN_DISABLE";
      
      public static const const_820:String = "WN_DISABLED";
      
      public static const const_732:String = "WN_RESIZE";
      
      public static const const_170:String = "WN_RESIZED";
      
      public static const const_1074:String = "WN_RELOCATE";
      
      public static const const_491:String = "WN_RELOCATED";
      
      public static const const_1026:String = "WN_MINIMIZE";
      
      public static const const_1032:String = "WN_MINIMIZED";
      
      public static const const_936:String = "WN_MAXIMIZE";
      
      public static const const_1077:String = "WN_MAXIMIZED";
      
      public static const const_1062:String = "WN_RESTORE";
      
      public static const const_1047:String = "WN_RESTORED";
      
      public static const const_1732:String = "WN_ARRANGE";
      
      public static const const_1711:String = "WN_ARRANGED";
      
      public static const const_1616:String = "WN_UPDATE";
      
      public static const const_1796:String = "WN_UPDATED";
      
      public static const const_338:String = "WN_CHILD_ADDED";
      
      public static const const_718:String = "WN_CHILD_REMOVED";
      
      public static const WINDOW_NOTIFY_CHILD_RESIZED:String = "WN_CHILD_RESIZED";
      
      public static const const_267:String = "WN_CHILD_RELOCATED";
      
      public static const const_206:String = "WN_CHILD_ACTIVATED";
      
      public static const const_431:String = "WN_PARENT_ADDED";
      
      public static const const_973:String = "WN_PARENT_REMOVED";
      
      public static const const_424:String = "WN_PARENT_RESIZED";
      
      public static const const_1052:String = "WN_PARENT_RELOCATED";
      
      public static const const_609:String = "WN_PARENT_ACTIVATED";
      
      public static const const_454:String = "WN_STATE_UPDATED";
      
      public static const const_531:String = "WN_STYLE_UPDATED";
      
      public static const const_403:String = "WN_PARAM_UPDATED";
      
      public static const const_1619:String = "";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1939,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}

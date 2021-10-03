package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_702;
         param1["bitmap"] = const_680;
         param1["border"] = const_807;
         param1["border_notify"] = const_1454;
         param1["button"] = const_432;
         param1["button_thick"] = const_602;
         param1["button_icon"] = const_1457;
         param1["button_group_left"] = const_799;
         param1["button_group_center"] = const_765;
         param1["button_group_right"] = const_707;
         param1["canvas"] = const_652;
         param1["checkbox"] = const_663;
         param1["closebutton"] = const_1043;
         param1["container"] = const_322;
         param1["container_button"] = const_752;
         param1["display_object_wrapper"] = const_711;
         param1["dropmenu"] = const_528;
         param1["dropmenu_item"] = const_538;
         param1["frame"] = const_359;
         param1["frame_notify"] = const_1277;
         param1["header"] = const_801;
         param1["html"] = const_1103;
         param1["icon"] = const_966;
         param1["itemgrid"] = const_961;
         param1["itemgrid_horizontal"] = const_451;
         param1["itemgrid_vertical"] = const_794;
         param1["itemlist"] = const_1003;
         param1["itemlist_horizontal"] = const_348;
         param1["itemlist_vertical"] = const_342;
         param1["maximizebox"] = const_1413;
         param1["menu"] = const_1470;
         param1["menu_item"] = const_1267;
         param1["submenu"] = const_1022;
         param1["minimizebox"] = const_1426;
         param1["notify"] = const_1434;
         param1["com.sulake.habbo.session.furniture"] = const_666;
         param1["password"] = const_618;
         param1["radiobutton"] = const_678;
         param1["region"] = const_798;
         param1["restorebox"] = const_1531;
         param1["scaler"] = const_729;
         param1["scaler_horizontal"] = const_1449;
         param1["scaler_vertical"] = const_1292;
         param1["scrollbar_horizontal"] = const_539;
         param1["scrollbar_vertical"] = const_770;
         param1["scrollbar_slider_button_up"] = const_993;
         param1["scrollbar_slider_button_down"] = const_903;
         param1["scrollbar_slider_button_left"] = const_1036;
         param1["scrollbar_slider_button_right"] = const_1000;
         param1["scrollbar_slider_bar_horizontal"] = const_994;
         param1["scrollbar_slider_bar_vertical"] = const_1001;
         param1["scrollbar_slider_track_horizontal"] = const_1060;
         param1["scrollbar_slider_track_vertical"] = const_1049;
         param1["scrollable_itemlist"] = const_1391;
         param1["scrollable_itemlist_vertical"] = const_536;
         param1["scrollable_itemlist_horizontal"] = const_1030;
         param1["selector"] = const_717;
         param1["selector_list"] = const_723;
         param1["submenu"] = const_1022;
         param1["tab_button"] = const_658;
         param1["tab_container_button"] = const_956;
         param1["tab_context"] = const_357;
         param1["tab_content"] = const_1061;
         param1["tab_selector"] = const_580;
         param1["text"] = const_672;
         param1["input"] = const_793;
         param1["toolbar"] = const_1389;
         param1["tooltip"] = const_375;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}

package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["com.sulake.habbo.session.furniture"] = const_183;
         param1["bound_to_parent_rect"] = const_91;
         param1["child_window"] = const_1071;
         param1["embedded_controller"] = const_1056;
         param1["resize_to_accommodate_children"] = const_62;
         param1["input_event_processor"] = const_28;
         param1["internal_event_handling"] = const_698;
         param1["mouse_dragging_target"] = const_214;
         param1["mouse_dragging_trigger"] = const_351;
         param1["mouse_scaling_target"] = const_265;
         param1["mouse_scaling_trigger"] = const_448;
         param1["horizontal_mouse_scaling_trigger"] = const_237;
         param1["vertical_mouse_scaling_trigger"] = const_252;
         param1["observe_parent_input_events"] = const_1055;
         param1["optimize_region_to_layout_size"] = const_515;
         param1["parent_window"] = const_939;
         param1["relative_horizontal_scale_center"] = const_160;
         param1["relative_horizontal_scale_fixed"] = const_132;
         param1["relative_horizontal_scale_move"] = const_340;
         param1["relative_horizontal_scale_strech"] = WINDOW_PARAM_RELATIVE_HORIZONTAL_SCALE_STRECH;
         param1["relative_scale_center"] = const_1012;
         param1["relative_scale_fixed"] = const_722;
         param1["relative_scale_move"] = const_949;
         param1["relative_scale_strech"] = const_1044;
         param1["relative_vertical_scale_center"] = const_187;
         param1["relative_vertical_scale_fixed"] = const_124;
         param1["relative_vertical_scale_move"] = const_313;
         param1["relative_vertical_scale_strech"] = const_325;
         param1["on_resize_align_left"] = const_726;
         param1["on_resize_align_right"] = const_508;
         param1["on_resize_align_center"] = const_504;
         param1["on_resize_align_top"] = const_742;
         param1["on_resize_align_bottom"] = const_410;
         param1["on_resize_align_middle"] = const_516;
         param1["on_accommodate_align_left"] = const_1116;
         param1["on_accommodate_align_right"] = const_452;
         param1["on_accommodate_align_center"] = const_749;
         param1["on_accommodate_align_top"] = const_962;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_659;
         param1["route_input_events_to_parent"] = const_440;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_1090;
         param1["scalable_with_mouse"] = const_970;
         param1["reflect_horizontal_resize_to_parent"] = const_443;
         param1["reflect_vertical_resize_to_parent"] = const_468;
         param1["reflect_resize_to_parent"] = const_291;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}

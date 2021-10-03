package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_791:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2269:int;
      
      private var var_2270:int;
      
      private var _color:uint;
      
      private var var_1103:int;
      
      private var var_2271:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_791);
         this.var_2269 = param1;
         this.var_2270 = param2;
         this._color = param3;
         this.var_1103 = param4;
         this.var_2271 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2269;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2270;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1103;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2271;
      }
   }
}

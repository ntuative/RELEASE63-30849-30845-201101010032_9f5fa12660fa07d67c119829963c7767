package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_701:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_948:String = "inventory_effects";
      
      public static const const_942:String = "inventory_badges";
      
      public static const const_1379:String = "inventory_clothes";
      
      public static const const_1315:String = "inventory_furniture";
       
      
      private var var_2064:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_701);
         this.var_2064 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2064;
      }
   }
}

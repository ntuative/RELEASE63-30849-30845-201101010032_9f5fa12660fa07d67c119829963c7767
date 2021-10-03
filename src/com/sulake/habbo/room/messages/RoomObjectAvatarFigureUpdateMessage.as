package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_597:String;
      
      private var var_2313:String;
      
      private var var_907:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_597 = param1;
         this.var_907 = param2;
         this.var_2313 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_597;
      }
      
      public function get race() : String
      {
         return this.var_2313;
      }
      
      public function get gender() : String
      {
         return this.var_907;
      }
   }
}

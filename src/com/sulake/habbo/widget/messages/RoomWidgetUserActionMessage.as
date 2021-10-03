package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_578:String = "RWUAM_WHISPER_USER";
      
      public static const const_709:String = "RWUAM_IGNORE_USER";
      
      public static const const_684:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_500:String = "RWUAM_KICK_USER";
      
      public static const const_700:String = "RWUAM_BAN_USER";
      
      public static const const_581:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_606:String = "RWUAM_RESPECT_USER";
      
      public static const const_628:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_730:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_613:String = "RWUAM_START_TRADING";
      
      public static const const_783:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_409:String = "RWUAM_KICK_BOT";
      
      public static const const_668:String = "RWUAM_REPORT";
      
      public static const const_532:String = "RWUAM_PICKUP_PET";
      
      public static const const_1344:String = "RWUAM_TRAIN_PET";
      
      public static const const_463:String = " RWUAM_RESPECT_PET";
      
      public static const const_333:String = "RWUAM_REQUEST_PET_UPDATE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}

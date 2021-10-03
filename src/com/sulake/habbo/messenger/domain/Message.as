package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_760:int = 1;
      
      public static const const_714:int = 2;
      
      public static const const_802:int = 3;
      
      public static const const_926:int = 4;
      
      public static const const_805:int = 5;
      
      public static const const_898:int = 6;
       
      
      private var _type:int;
      
      private var var_1007:int;
      
      private var var_2376:String;
      
      private var var_2478:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1007 = param2;
         this.var_2376 = param3;
         this.var_2478 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2376;
      }
      
      public function get time() : String
      {
         return this.var_2478;
      }
      
      public function get senderId() : int
      {
         return this.var_1007;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}

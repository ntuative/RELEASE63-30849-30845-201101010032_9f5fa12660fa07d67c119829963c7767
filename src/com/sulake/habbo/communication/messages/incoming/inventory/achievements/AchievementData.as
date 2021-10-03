package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1322:int;
      
      private var var_275:String;
      
      private var var_2436:int;
      
      private var var_1998:int;
      
      private var var_1664:int;
      
      private var var_2435:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1322 = param1.readInteger();
         this.var_275 = param1.readString();
         this.var_2436 = param1.readInteger();
         this.var_1998 = param1.readInteger();
         this.var_1664 = param1.readInteger();
         this.var_2435 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_275;
      }
      
      public function get level() : int
      {
         return this.var_1322;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2436;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_1998;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1664;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2435;
      }
   }
}

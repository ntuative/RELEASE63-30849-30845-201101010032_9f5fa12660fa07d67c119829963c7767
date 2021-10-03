package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1760:int;
      
      private var var_2330:String;
      
      private var var_907:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1760 = param1.readInteger();
         this.var_2330 = param1.readString();
         this.var_907 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1760;
      }
      
      public function get figureString() : String
      {
         return this.var_2330;
      }
      
      public function get gender() : String
      {
         return this.var_907;
      }
   }
}

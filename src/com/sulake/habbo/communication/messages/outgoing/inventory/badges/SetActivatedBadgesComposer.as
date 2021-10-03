package com.sulake.habbo.communication.messages.outgoing.inventory.badges
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class SetActivatedBadgesComposer implements IMessageComposer
   {
       
      
      private var var_976:Array;
      
      private const const_1556:int = 5;
      
      public function SetActivatedBadgesComposer()
      {
         super();
         this.var_976 = new Array();
      }
      
      public function addActivatedBadge(param1:String) : void
      {
         if(this.var_976.length >= this.const_1556)
         {
            return;
         }
         this.var_976.push(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 1;
         while(_loc2_ <= this.const_1556)
         {
            if(_loc2_ <= this.var_976.length)
            {
               _loc1_.push(_loc2_);
               _loc1_.push(this.var_976[_loc2_ - 1]);
            }
            else
            {
               _loc1_.push(_loc2_);
               _loc1_.push("");
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}

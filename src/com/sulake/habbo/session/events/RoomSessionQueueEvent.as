package com.sulake.habbo.session.events
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionQueueEvent extends RoomSessionEvent
   {
      
      public static const const_476:String = "RSQE_QUEUE_STATUS";
      
      public static const const_990:String = "c";
      
      public static const const_1421:String = "d";
      
      public static const const_901:int = 2;
      
      public static const const_983:int = 1;
       
      
      private var _name:String;
      
      private var _target:int;
      
      private var var_1305:Map;
      
      private var var_397:Boolean;
      
      private var var_2743:String;
      
      public function RoomSessionQueueEvent(param1:IRoomSession, param2:String, param3:int, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false)
      {
         super(const_476,param1,param5,param6);
         this._name = param2;
         this._target = param3;
         this.var_1305 = new Map();
         this.var_397 = param4;
      }
      
      public function get isActive() : Boolean
      {
         return this.var_397;
      }
      
      public function get queueSetName() : String
      {
         return this._name;
      }
      
      public function get queueSetTarget() : int
      {
         return this._target;
      }
      
      public function get queueTypes() : Array
      {
         return this.var_1305.getKeys();
      }
      
      public function getQueueSize(param1:String) : int
      {
         return this.var_1305.getValue(param1);
      }
      
      public function method_4(param1:String, param2:int) : void
      {
         this.var_1305.add(param1,param2);
      }
   }
}

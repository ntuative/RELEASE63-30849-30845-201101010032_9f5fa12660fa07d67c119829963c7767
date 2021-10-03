package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_857:int = 3;
       
      
      private var var_2483:int = -1;
      
      private var var_2491:int = -2;
      
      private var var_337:Vector3d = null;
      
      private var var_401:Vector3d = null;
      
      private var var_2484:Boolean = false;
      
      private var var_2489:Boolean = false;
      
      private var var_2490:Boolean = false;
      
      private var var_2485:Boolean = false;
      
      private var var_2486:int = 0;
      
      private var var_2488:int = 0;
      
      private var var_2487:int = 0;
      
      private var var_2482:int = 0;
      
      private var var_1384:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_401;
      }
      
      public function get targetId() : int
      {
         return this.var_2483;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2491;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2484;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2489;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2490;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2485;
      }
      
      public function get screenWd() : int
      {
         return this.var_2486;
      }
      
      public function get screenHt() : int
      {
         return this.var_2488;
      }
      
      public function get roomWd() : int
      {
         return this.var_2487;
      }
      
      public function get roomHt() : int
      {
         return this.var_2482;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2483 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2491 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2484 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2489 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2490 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2485 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2486 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2488 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2487 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2482 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_337 == null)
         {
            this.var_337 = new Vector3d();
         }
         if(this.var_337.x != param1.x || this.var_337.y != param1.y || this.var_337.z != param1.z)
         {
            this.var_337.assign(param1);
            this.var_1384 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_337 = null;
         this.var_401 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_401 != null)
         {
            return;
         }
         this.var_401 = new Vector3d();
         this.var_401.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_337 != null && this.var_401 != null)
         {
            ++this.var_1384;
            _loc4_ = Vector3d.dif(this.var_337,this.var_401);
            if(_loc4_.length <= param2)
            {
               this.var_401 = this.var_337;
               this.var_337 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_857 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1384 <= const_857)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_401 = Vector3d.sum(this.var_401,_loc4_);
            }
         }
      }
   }
}

package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_428:WallRasterizer;
      
      private var var_429:FloorRasterizer;
      
      private var var_643:WallAdRasterizer;
      
      private var var_427:LandscapeRasterizer;
      
      private var var_642:PlaneMaskManager;
      
      private var var_634:Boolean = false;
      
      public function RoomVisualizationData()
      {
         super();
         this.var_428 = new WallRasterizer();
         this.var_429 = new FloorRasterizer();
         this.var_643 = new WallAdRasterizer();
         this.var_427 = new LandscapeRasterizer();
         this.var_642 = new PlaneMaskManager();
      }
      
      public function get initialized() : Boolean
      {
         return this.var_634;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return this.var_429;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return this.var_428;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return this.var_643;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return this.var_427;
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return this.var_642;
      }
      
      public function dispose() : void
      {
         if(this.var_428 != null)
         {
            this.var_428.dispose();
            this.var_428 = null;
         }
         if(this.var_429 != null)
         {
            this.var_429.dispose();
            this.var_429 = null;
         }
         if(this.var_643 != null)
         {
            this.var_643.dispose();
            this.var_643 = null;
         }
         if(this.var_427 != null)
         {
            this.var_427.dispose();
            this.var_427 = null;
         }
         if(this.var_642 != null)
         {
            this.var_642.dispose();
            this.var_642 = null;
         }
      }
      
      public function clearCache() : void
      {
         if(this.var_428 != null)
         {
            this.var_428.clearCache();
         }
         if(this.var_429 != null)
         {
            this.var_429.clearCache();
         }
         if(this.var_427 != null)
         {
            this.var_427.clearCache();
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            this.var_428.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            this.var_429.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            this.var_643.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            this.var_427.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            this.var_642.initialize(_loc11_);
         }
         return true;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(this.var_634)
         {
            return;
         }
         this.var_428.initializeAssetCollection(param1);
         this.var_429.initializeAssetCollection(param1);
         this.var_643.initializeAssetCollection(param1);
         this.var_427.initializeAssetCollection(param1);
         this.var_642.initializeAssetCollection(param1);
         this.var_634 = true;
      }
      
      protected function reset() : void
      {
      }
   }
}

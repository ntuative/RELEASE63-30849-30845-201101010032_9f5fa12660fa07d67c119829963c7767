package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_722:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_687)
         {
            _structure = null;
            _assets = null;
            var_228 = null;
            var_259 = null;
            var_597 = null;
            var_516 = null;
            var_292 = null;
            if(!var_1197 && var_39)
            {
               var_39.dispose();
            }
            var_39 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_689 = null;
            var_687 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_722[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_722[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_326:
               switch(_loc3_)
               {
                  case AvatarAction.const_595:
                  case AvatarAction.const_400:
                  case AvatarAction.const_355:
                  case AvatarAction.const_708:
                  case AvatarAction.const_381:
                  case AvatarAction.const_796:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_302:
            case AvatarAction.const_619:
            case AvatarAction.const_235:
            case AvatarAction.const_681:
            case AvatarAction.const_778:
            case AvatarAction.const_741:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}

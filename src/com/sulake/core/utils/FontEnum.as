package com.sulake.core.utils
{
   import flash.text.Font;
   
   public class FontEnum
   {
      
      private static const const_838:Map = new Map();
      
      private static const const_837:Map = new Map();
      
      private static var var_1049:Boolean = false;
       
      
      public function FontEnum()
      {
         super();
      }
      
      public static function get deviceFonts() : Map
      {
         init();
         return const_838;
      }
      
      public static function get embeddedFonts() : Map
      {
         init();
         return const_837;
      }
      
      private static function init() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(!var_1049)
         {
            _loc1_ = Font.enumerateFonts(false);
            _loc2_ = Font.enumerateFonts(true);
            for each(_loc3_ in _loc2_)
            {
               if(_loc1_.indexOf(_loc3_) > -1)
               {
                  const_837.add(_loc3_.fontName,_loc3_);
               }
               else
               {
                  const_838.add(_loc3_.fontName,_loc3_);
               }
            }
            var_1049 = true;
         }
      }
   }
}

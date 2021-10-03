package com.sulake.core.assets
{
   import flash.display.DisplayObject;
   
   public class DisplayAsset implements IAsset
   {
       
      
      protected var var_948:String;
      
      protected var var_165:DisplayObject;
      
      protected var _disposed:Boolean = false;
      
      protected var var_778:AssetTypeDeclaration;
      
      public function DisplayAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_778 = param1;
         this.var_948 = param2;
      }
      
      public function get url() : String
      {
         return this.var_948;
      }
      
      public function get content() : Object
      {
         return this.var_165;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_778;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this.var_165.loaderInfo != null)
            {
               if(this.var_165.loaderInfo.loader != null)
               {
                  this.var_165.loaderInfo.loader.unload();
               }
            }
            this.var_165 = null;
            this.var_778 = null;
            this._disposed = true;
            this.var_948 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is DisplayObject)
         {
            this.var_165 = param1 as DisplayObject;
            if(this.var_165 != null)
            {
               return;
            }
            throw new Error("Failed to convert DisplayObject to DisplayAsset!");
         }
         if(param1 is DisplayAsset)
         {
            this.var_165 = DisplayAsset(param1).var_165;
            this.var_778 = DisplayAsset(param1).var_778;
            if(this.var_165 == null)
            {
               throw new Error("Failed to read content from DisplayAsset!");
            }
         }
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is DisplayAsset)
         {
            this.var_165 = DisplayAsset(param1).var_165;
            this.var_778 = DisplayAsset(param1).var_778;
            return;
         }
         throw new Error("Provided asset should be of type DisplayAsset!");
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
   }
}

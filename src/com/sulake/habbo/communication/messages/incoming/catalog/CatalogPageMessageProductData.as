package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_79:String = "i";
      
      public static const const_87:String = "s";
      
      public static const const_234:String = "e";
       
      
      private var var_1852:String;
      
      private var var_2662:int;
      
      private var var_1424:String;
      
      private var var_1423:int;
      
      private var var_1853:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1852 = param1.readString();
         this.var_2662 = param1.readInteger();
         this.var_1424 = param1.readString();
         this.var_1423 = param1.readInteger();
         this.var_1853 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1852;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2662;
      }
      
      public function get extraParam() : String
      {
         return this.var_1424;
      }
      
      public function get productCount() : int
      {
         return this.var_1423;
      }
      
      public function get expiration() : int
      {
         return this.var_1853;
      }
   }
}

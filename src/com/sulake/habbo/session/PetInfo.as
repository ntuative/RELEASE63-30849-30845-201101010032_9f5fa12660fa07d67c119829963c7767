package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1810:int;
      
      private var var_1322:int;
      
      private var var_1966:int;
      
      private var var_1967:int;
      
      private var var_1969:int;
      
      private var _energy:int;
      
      private var var_1970:int;
      
      private var _nutrition:int;
      
      private var var_1972:int;
      
      private var var_1971:int;
      
      private var _ownerName:String;
      
      private var var_1968:int;
      
      private var var_469:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1810;
      }
      
      public function get level() : int
      {
         return this.var_1322;
      }
      
      public function get levelMax() : int
      {
         return this.var_1966;
      }
      
      public function get experience() : int
      {
         return this.var_1967;
      }
      
      public function get experienceMax() : int
      {
         return this.var_1969;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_1970;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_1972;
      }
      
      public function get ownerId() : int
      {
         return this.var_1971;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_1968;
      }
      
      public function get age() : int
      {
         return this.var_469;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1810 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1322 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_1966 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_1967 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_1969 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_1970 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_1972 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_1971 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_1968 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_469 = param1;
      }
   }
}

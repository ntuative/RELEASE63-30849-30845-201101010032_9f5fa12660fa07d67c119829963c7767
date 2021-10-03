package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1810:int;
      
      private var _name:String;
      
      private var var_1322:int;
      
      private var var_2646:int;
      
      private var var_1967:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_597:String;
      
      private var var_2648:int;
      
      private var var_2645:int;
      
      private var var_2647:int;
      
      private var var_1968:int;
      
      private var var_1971:int;
      
      private var _ownerName:String;
      
      private var var_469:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1810;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1322;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2646;
      }
      
      public function get experience() : int
      {
         return this.var_1967;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_597;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2648;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2645;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2647;
      }
      
      public function get respect() : int
      {
         return this.var_1968;
      }
      
      public function get ownerId() : int
      {
         return this.var_1971;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_469;
      }
      
      public function flush() : Boolean
      {
         this.var_1810 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1810 = param1.readInteger();
         this._name = param1.readString();
         this.var_1322 = param1.readInteger();
         this.var_2646 = param1.readInteger();
         this.var_1967 = param1.readInteger();
         this.var_2648 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2645 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2647 = param1.readInteger();
         this.var_597 = param1.readString();
         this.var_1968 = param1.readInteger();
         this.var_1971 = param1.readInteger();
         this.var_469 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}

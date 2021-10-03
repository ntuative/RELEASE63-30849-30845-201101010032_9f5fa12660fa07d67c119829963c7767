package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1322:int;
      
      private var var_1966:int;
      
      private var var_1967:int;
      
      private var var_1969:int;
      
      private var _energy:int;
      
      private var var_1970:int;
      
      private var _nutrition:int;
      
      private var var_1972:int;
      
      private var _petRespect:int;
      
      private var _name:String = "";
      
      private var var_1810:int = -1;
      
      private var _type:int;
      
      private var var_2313:int;
      
      private var var_39:BitmapData;
      
      private var var_2537:Boolean;
      
      private var var_1971:int;
      
      private var _ownerName:String;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var var_2538:int;
      
      private var var_469:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get id() : int
      {
         return this.var_1810;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get race() : int
      {
         return this.var_2313;
      }
      
      public function get image() : BitmapData
      {
         return this.var_39;
      }
      
      public function get isOwnPet() : Boolean
      {
         return this.var_2537;
      }
      
      public function get ownerId() : int
      {
         return this.var_1971;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return this._canOwnerBeKicked;
      }
      
      public function get age() : int
      {
         return this.var_469;
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
      
      public function get petRespect() : int
      {
         return this._petRespect;
      }
      
      public function get roomIndex() : int
      {
         return this.var_2538;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         this._name = param1.name;
         this.var_1810 = param1.id;
         this._type = param1.petType;
         this.var_2313 = param1.petRace;
         this.var_39 = param1.image;
         this.var_2537 = param1.isOwnPet;
         this.var_1971 = param1.ownerId;
         this._ownerName = param1.ownerName;
         this._canOwnerBeKicked = param1.canOwnerBeKicked;
         this.var_1322 = param1.level;
         this.var_1966 = param1.levelMax;
         this.var_1967 = param1.experience;
         this.var_1969 = param1.experienceMax;
         this._energy = param1.energy;
         this.var_1970 = param1.energyMax;
         this._nutrition = param1.nutrition;
         this.var_1972 = param1.nutritionMax;
         this._petRespect = param1.petRespect;
         this.var_2538 = param1.roomIndex;
         this.var_469 = param1.age;
      }
   }
}

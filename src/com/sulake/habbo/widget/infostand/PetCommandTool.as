package com.sulake.habbo.widget.infostand
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.ICoreWindowManager;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetPetCommandMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetUserActionMessage;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class PetCommandTool
   {
       
      
      private var _widget:InfostandWidget;
      
      private var var_41:IFrameWindow;
      
      private var var_381:IFrameWindow;
      
      private var var_1040:Map;
      
      private var var_564:int;
      
      private var var_2248:String;
      
      private var var_382:Timer;
      
      private const const_1855:int = 1100;
      
      public function PetCommandTool(param1:InfostandWidget)
      {
         super();
         this._widget = param1;
         this.var_1040 = new Map();
         this.var_382 = new Timer(this.const_1855);
         this.var_382.addEventListener(TimerEvent.TIMER,this.onButtonDisableTimeout);
      }
      
      public function dispose() : void
      {
         if(this.var_382)
         {
            this.var_382.stop();
            this.var_382 = null;
         }
         if(this._widget)
         {
            this._widget = null;
         }
         if(this.var_41)
         {
            this.var_41.dispose();
         }
         this.var_41 = null;
         if(this.var_381)
         {
            this.var_381.dispose();
         }
         this.var_381 = null;
      }
      
      public function getPetId() : int
      {
         return this.var_564;
      }
      
      public function isVisible() : Boolean
      {
         if(this.var_41 == null)
         {
            return false;
         }
         return this.var_41.visible;
      }
      
      public function showCommandToolForPet(param1:int, param2:String, param3:BitmapData = null) : void
      {
         if(this.var_564 == param1)
         {
            return;
         }
         this.var_564 = param1;
         this.var_2248 = param2;
         if(this.var_41 == null)
         {
            return;
         }
         var _loc4_:ITextWindow = this.var_41.findChildByName("pet_name") as ITextWindow;
         if(_loc4_ != null)
         {
            _loc4_.text = param2;
         }
         var _loc5_:IBitmapWrapperWindow = this.var_41.findChildByName("avatar_image") as IBitmapWrapperWindow;
         if(_loc5_ != null)
         {
            _loc5_.bitmap = param3;
            _loc5_.width = param3.width;
            _loc5_.height = param3.height;
            _loc5_.invalidate();
         }
         var _loc6_:Array = this.var_1040.getValue(param1) as Array;
         if(_loc6_ == null)
         {
            this.updateCommandButtonsViewState(new Array());
            this.requestEnabledCommands(this.var_564);
         }
         else
         {
            this.updateCommandButtonsViewState(_loc6_);
         }
      }
      
      private function onButtonDisableTimeout(param1:TimerEvent) : void
      {
         var _loc2_:Array = this.var_1040.getValue(this.var_564) as Array;
         this.updateCommandButtonsViewState(_loc2_);
         this.var_382.stop();
      }
      
      public function setEnabledCommands(param1:int, param2:Array) : void
      {
         this.var_1040.remove(param1);
         this.var_1040.add(param1,param2);
         if(param1 != this.var_564)
         {
            return;
         }
         this.updateCommandButtonsViewState(param2);
         this.var_382.stop();
      }
      
      public function showWindow(param1:Boolean) : void
      {
         if(param1)
         {
            if(this.var_41 == null)
            {
               this.createCommandWindow();
            }
            this.var_41.visible = true;
         }
         else if(this.var_41 != null)
         {
            this.var_41.visible = false;
         }
         this.var_382.stop();
      }
      
      private function requestEnabledCommands(param1:int) : void
      {
         var _loc2_:RoomWidgetPetCommandMessage = new RoomWidgetPetCommandMessage(RoomWidgetPetCommandMessage.const_644,param1);
         this._widget.messageListener.processWidgetMessage(_loc2_);
      }
      
      private function createCommandWindow() : void
      {
         var _loc1_:XmlAsset = this._widget.assets.getAssetByName("pet_commands") as XmlAsset;
         this.var_41 = (this._widget.windowManager as ICoreWindowManager).buildFromXML(_loc1_.content as XML) as IFrameWindow;
         if(this.var_41 == null)
         {
            throw new Error("Failed to construct command window from XML!");
         }
         this.var_41.setParamFlag(WindowParam.const_91,true);
         this.var_41.context.getDesktopWindow().addEventListener(WindowEvent.const_44,this.onWindowDesktopResized);
         this.var_41.procedure = this.onCommandWindowProcedure;
         this.var_41.x = 80;
      }
      
      private function updateCommandButtonsViewState(param1:Array) : void
      {
         var _loc2_:* = null;
         var _loc4_:* = null;
         if(this.var_41 == null)
         {
            return;
         }
         if(param1 == null)
         {
            param1 = new Array();
         }
         var _loc3_:int = 0;
         do
         {
            _loc4_ = "btn_cmd_" + _loc3_;
            _loc2_ = this.var_41.findChildByName(_loc4_) as IButtonWindow;
            if(_loc2_ == null)
            {
               break;
            }
            if(param1.indexOf(_loc3_) > -1)
            {
               _loc2_.enable();
            }
            else
            {
               _loc2_.disable();
            }
            _loc3_++;
         }
         while(_loc2_ != null);
         
         this.var_382.stop();
      }
      
      private function openInfoWindow() : void
      {
         var _loc1_:* = null;
         if(this.var_381 == null)
         {
            _loc1_ = this._widget.assets.getAssetByName("pet_commands_info") as XmlAsset;
            this.var_381 = (this._widget.windowManager as ICoreWindowManager).buildFromXML(_loc1_.content as XML) as IFrameWindow;
            if(this.var_381 == null)
            {
               throw new Error("Failed to construct command info window from XML!");
            }
            this.var_381.x = 200;
            this.var_381.procedure = this.onInfoWindowProcedure;
         }
         else
         {
            this.var_381.visible = true;
         }
      }
      
      private function onInfoWindowProcedure(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:WindowMouseEvent = param1 as WindowMouseEvent;
         if(_loc3_ != null && _loc3_.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            if(param2.name == "header_button_close")
            {
               this.var_381.visible = false;
            }
         }
      }
      
      private function onCommandWindowProcedure(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc3_:WindowMouseEvent = param1 as WindowMouseEvent;
         if(_loc3_ != null && _loc3_.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            if(param2.name == "header_button_close")
            {
               this.var_41.visible = false;
            }
            else if(param2.name == "description_link")
            {
               this.openInfoWindow();
            }
            else if(param2.name == "avatar_image")
            {
               this._widget.messageListener.processWidgetMessage(new RoomWidgetUserActionMessage(RoomWidgetUserActionMessage.const_333,this.var_564));
            }
            else if(param2.name.indexOf("btn_cmd_") > -1)
            {
               _loc4_ = int(param2.name.substring(8));
               _loc5_ = "pet.command." + _loc4_;
               _loc6_ = this._widget.localizations.getKey(_loc5_);
               _loc7_ = new RoomWidgetPetCommandMessage(RoomWidgetPetCommandMessage.const_571,this.var_564,this.var_2248 + " " + _loc6_);
               this._widget.messageListener.processWidgetMessage(_loc7_);
               this.updateCommandButtonsViewState(new Array());
               this.var_382.start();
            }
         }
      }
      
      private function onWindowDesktopResized(param1:WindowEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(this.var_41 && !this.var_41.disposed)
         {
            _loc2_ = param1.window;
            _loc3_ = new Rectangle();
            this.var_41.getGlobalRectangle(_loc3_);
            if(_loc3_.x > _loc2_.width)
            {
               this.var_41.x = _loc2_.width - this.var_41.width;
               this.var_41.getGlobalRectangle(_loc3_);
            }
            if(_loc3_.x + _loc3_.width <= 0)
            {
               this.var_41.x = 0;
               this.var_41.getGlobalRectangle(_loc3_);
            }
            if(_loc3_.y > _loc2_.height)
            {
               this.var_41.y = 0;
               this.var_41.getGlobalRectangle(_loc3_);
            }
            if(_loc3_.y + _loc3_.height <= 0)
            {
               this.var_41.y = 0;
               this.var_41.getGlobalRectangle(_loc3_);
            }
         }
      }
   }
}

package com.sulake.habbo.navigator.roomsettings
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IIconWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CreateFlatMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.TextFieldManager;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.domain.RoomLayout;
   import com.sulake.habbo.session.HabboClubLevelEnum;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class RoomCreateViewCtrl
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var var_165:IWindowContainer;
      
      private var var_53:IItemListWindow;
      
      private var var_1098:TextFieldManager;
      
      private var var_38:Array;
      
      private var var_1097:RoomLayout;
      
      private var var_590:Timer;
      
      private var var_1755:Boolean = true;
      
      public function RoomCreateViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_590 = new Timer(100);
         this.var_590.addEventListener(TimerEvent.TIMER,this.updateArrowPos);
         this.var_38 = new Array();
         this.var_38.push(new RoomLayout(HabboClubLevelEnum.const_46,104,"a"));
         this.var_38.push(new RoomLayout(HabboClubLevelEnum.const_46,94,"b"));
         this.var_38.push(new RoomLayout(HabboClubLevelEnum.const_46,36,"c"));
         this.var_38.push(new RoomLayout(HabboClubLevelEnum.const_46,84,"d"));
         this.var_38.push(new RoomLayout(HabboClubLevelEnum.const_46,80,"e"));
         this.var_38.push(new RoomLayout(HabboClubLevelEnum.const_46,80,"f"));
         this.var_38.push(new RoomLayout(HabboClubLevelEnum.const_46,416,"i"));
         this.var_38.push(new RoomLayout(HabboClubLevelEnum.const_46,320,"j"));
         this.var_38.push(new RoomLayout(HabboClubLevelEnum.const_46,448,"k"));
         this.var_38.push(new RoomLayout(HabboClubLevelEnum.const_46,352,"l"));
         this.var_38.push(new RoomLayout(HabboClubLevelEnum.const_46,384,"m"));
         this.var_38.push(new RoomLayout(HabboClubLevelEnum.const_46,372,"n"));
         this.var_38.push(new RoomLayout(HabboClubLevelEnum.const_58,80,"g"));
         this.var_38.push(new RoomLayout(HabboClubLevelEnum.const_58,74,"h"));
         this.var_38.push(new RoomLayout(HabboClubLevelEnum.const_58,416,"o"));
         this.var_38.push(new RoomLayout(HabboClubLevelEnum.const_58,352,"p"));
         this.var_38.push(new RoomLayout(HabboClubLevelEnum.const_58,304,"q"));
         this.var_38.push(new RoomLayout(HabboClubLevelEnum.const_58,336,"r"));
         this.var_38.push(new RoomLayout(HabboClubLevelEnum.const_58,748,"u"));
         this.var_38.push(new RoomLayout(HabboClubLevelEnum.const_58,438,"v"));
         this.var_38.push(new RoomLayout(HabboClubLevelEnum.const_53,540,"t"));
         this.var_38.push(new RoomLayout(HabboClubLevelEnum.const_53,512,"w"));
         this.var_38.push(new RoomLayout(HabboClubLevelEnum.const_53,396,"x"));
         this.var_38.push(new RoomLayout(HabboClubLevelEnum.const_53,440,"y"));
         this.var_38.push(new RoomLayout(HabboClubLevelEnum.const_53,456,"z"));
         this.var_38.push(new RoomLayout(HabboClubLevelEnum.const_53,208,"0"));
      }
      
      public function dispose() : void
      {
         if(this.var_590)
         {
            this.var_590.removeEventListener(TimerEvent.TIMER,this.updateArrowPos);
            this.var_590.reset();
            this.var_590 = null;
         }
      }
      
      private function updateArrowPos(param1:Event) : void
      {
         var _loc3_:IBitmapWrapperWindow = IBitmapWrapperWindow(this.var_1097.view.findChildByName("select_arrow"));
         var _loc6_:int = Math.abs(_loc3_.y - 0) < 2 || Math.abs(_loc3_.y - 15) < 2 ? 1 : 2;
         _loc3_.y += !!this.var_1755 ? _loc6_ : -_loc6_;
         if(_loc3_.y < 0)
         {
            this.var_1755 = true;
            _loc3_.y = 1;
         }
         else if(_loc3_.y > 15)
         {
            this.var_1755 = false;
            _loc3_.y = 14;
         }
      }
      
      public function show() : void
      {
         this.prepare();
         this.var_165.visible = true;
         this.refresh();
         this.var_165.activate();
         this.var_590.start();
      }
      
      private function addMouseClickListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.setParamFlag(HabboWindowParam.const_36,true);
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,param2);
         }
      }
      
      private function prepare() : void
      {
         if(this.var_165 != null)
         {
            return;
         }
         this.var_165 = IWindowContainer(this._navigator.getXmlWindow("roc_create_room"));
         this.var_53 = IItemListWindow(this.var_165.findChildByName("item_list"));
         this.refreshRoomThumbnails();
         var _loc1_:IButtonWindow = this.getCreateButton();
         this.addMouseClickListener(_loc1_,this.onCreateButtonClick);
         var _loc2_:IButtonWindow = this.getCancelButton();
         this.addMouseClickListener(_loc2_,this.onCancelButtonClick);
         var _loc3_:IWindow = this.var_165.findChildByTag("close");
         this.addMouseClickListener(_loc3_,this.onCancelButtonClick);
         this.var_1098 = new TextFieldManager(this._navigator,ITextFieldWindow(this.var_165.findChildByName("room_name_input")),25,null,this._navigator.getText("navigator.createroom.roomnameinfo"));
         var _loc4_:Rectangle = Util.getLocationRelativeTo(this.var_165.desktop,this.var_165.width,this.var_165.height);
         this.var_165.x = _loc4_.x;
         this.var_165.y = _loc4_.y;
      }
      
      public function refresh() : void
      {
         this.var_1098.goBackToInitialState();
         this.var_1098.input.textBackgroundColor = 4294967295;
         this.var_1097 = this.var_38[0];
         this.refreshRoomThumbnails();
         this.refreshSelection();
      }
      
      private function refreshSelection() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = false;
         var _loc3_:* = null;
         for each(_loc1_ in this.var_38)
         {
            if(_loc1_.view != null)
            {
               _loc2_ = _loc1_ == this.var_1097;
               _loc1_.view.findChildByName("bg_sel").visible = _loc2_;
               _loc1_.view.findChildByName("bg_unsel").visible = !_loc2_;
               _loc3_ = ITextWindow(_loc1_.view.findChildByName("tile_size_txt"));
               _loc3_.textColor = !!_loc2_ ? 4294967295 : uint(4278190080);
               _loc3_.color = !!_loc2_ ? 4285432196 : uint(4291546059);
               this._navigator.refreshButton(_loc1_.view,"tile_icon_black",!_loc2_,null,0);
               this._navigator.refreshButton(_loc1_.view,"tile_icon_white",_loc2_,null,0);
               this._navigator.refreshButton(_loc1_.view,"select_arrow",_loc2_,null,0);
            }
         }
      }
      
      private function refreshRoomThumbnails() : void
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         while(this.var_53.numListItems > 0)
         {
            _loc6_ = this.var_53.removeListItemAt(0);
            _loc6_.destroy();
         }
         for each(_loc1_ in this.var_38)
         {
            if(_loc1_.view != null)
            {
               _loc1_.view.destroy();
               _loc1_.view = null;
            }
         }
         _loc2_ = 0;
         _loc4_ = 0;
         while(_loc4_ < this.var_38.length)
         {
            _loc7_ = this.var_38[_loc4_];
            if(this.isAllowed(_loc7_))
            {
               if(_loc2_ == 0)
               {
                  _loc3_ = this.getRow();
                  this.var_53.addListItem(_loc3_);
               }
               this.addThumbnail(_loc3_,this.var_38[_loc4_],_loc2_ % 2 == 0);
               _loc2_ = _loc2_ == 0 ? 1 : 0;
            }
            _loc4_++;
         }
         this.refreshSelection();
         var _loc5_:* = "roc_hc_promo";
         if(this._navigator.sessionData.hasUserRight("fuse_use_special_room_layouts"))
         {
            if(this._navigator.sessionData.hasUserRight("fuse_use_vip_room_layouts"))
            {
               _loc5_ = null;
            }
            else
            {
               _loc5_ = "roc_vip_promo";
            }
         }
         if(_loc5_)
         {
            _loc8_ = IWindowContainer(this._navigator.getXmlWindow(_loc5_));
            if(_loc8_)
            {
               _loc9_ = _loc8_.findChildByName("link");
               this.addMouseClickListener(_loc9_,this.onHcMoreClick);
               this.var_53.addListItem(_loc8_);
            }
         }
      }
      
      private function addThumbnail(param1:IWindowContainer, param2:RoomLayout, param3:Boolean) : void
      {
         var _loc4_:IWindowContainer = IWindowContainer(this._navigator.getXmlWindow("roc_room_thumbnail"));
         _loc4_.tags.push(param2.name);
         if(!param3)
         {
            _loc4_.x = _loc4_.width;
         }
         var _loc5_:IWindowContainer = IWindowContainer(_loc4_.findChildByName("bg_pic"));
         _loc5_.mouseTreshold = 0;
         this.addMouseClickListener(_loc5_,this.onContPicClick);
         var _loc6_:IBitmapWrapperWindow = this._navigator.getButton(param2.name,"model_" + param2.name,null,0,0,0);
         _loc6_.mouseTreshold = 0;
         this.addMouseClickListener(_loc6_,this.onPicClick);
         _loc5_.addChild(_loc6_);
         var _loc7_:Rectangle = Util.getLocationRelativeTo(_loc5_,_loc6_.width,_loc6_.height);
         _loc6_.x = _loc7_.x;
         _loc6_.y = _loc7_.y;
         param1.addChild(_loc4_);
         param1.width = 2 * _loc4_.width;
         param1.height = _loc4_.height;
         param2.view = _loc4_;
         ITextWindow(param2.view.findChildByName("tile_size_txt")).text = param2.tileSize + " " + this._navigator.getText("navigator.createroom.tilesize");
         var _loc8_:IIconWindow = _loc4_.findChildByName("club_icon") as IIconWindow;
         if(_loc8_)
         {
            switch(param2.requiredClubLevel)
            {
               case HabboClubLevelEnum.const_58:
                  _loc8_.style = 11;
                  break;
               case HabboClubLevelEnum.const_53:
                  _loc8_.style = 12;
                  break;
               default:
                  _loc8_.visible = false;
            }
         }
      }
      
      private function isAllowed(param1:RoomLayout) : Boolean
      {
         switch(param1.requiredClubLevel)
         {
            case HabboClubLevelEnum.const_46:
               return true;
            case HabboClubLevelEnum.const_58:
               return this._navigator.sessionData.hasUserRight("fuse_use_special_room_layouts");
            case HabboClubLevelEnum.const_53:
               return this._navigator.sessionData.hasUserRight("fuse_use_vip_room_layouts");
            default:
               return false;
         }
      }
      
      private function getRow() : IWindowContainer
      {
         return IWindowContainer(this._navigator.windowManager.createWindow("","",HabboWindowType.const_54,HabboWindowStyle.const_31,HabboWindowParam.const_60,new Rectangle(0,0,100,300)));
      }
      
      private function isMandatoryFieldsFilled() : Boolean
      {
         return Boolean(this.var_1098.checkMandatory(this._navigator.getText("navigator.createroom.nameerr")));
      }
      
      private function getCreateButton() : IButtonWindow
      {
         return IButtonWindow(this.var_165.findChildByName("create_button"));
      }
      
      private function getCancelButton() : IButtonWindow
      {
         return IButtonWindow(this.var_165.findChildByName("back_button"));
      }
      
      private function onChooseLayout(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:RoomLayout = this.getLayout(param2);
         if(this.isAllowed(_loc3_))
         {
            this.var_1097 = _loc3_;
            this.refreshSelection();
         }
      }
      
      private function getLayout(param1:IWindow) : RoomLayout
      {
         var _loc2_:IWindowContainer = IWindowContainer(param1.parent);
         return this.findLayout(_loc2_.tags[0]);
      }
      
      private function findLayout(param1:String) : RoomLayout
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_38)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return this.var_38[0];
      }
      
      private function onContPicClick(param1:WindowEvent) : void
      {
         var _loc2_:IWindow = param1.target as IWindow;
         this.onChooseLayout(param1,_loc2_);
      }
      
      private function onPicClick(param1:WindowEvent) : void
      {
         var _loc2_:IWindow = param1.target as IWindow;
         this.onChooseLayout(param1,_loc2_.parent);
      }
      
      private function onCancelButtonClick(param1:WindowEvent) : void
      {
         this.close();
      }
      
      private function onHcMoreClick(param1:WindowEvent) : void
      {
         this._navigator.openCatalogClubPage();
      }
      
      private function onCreateButtonClick(param1:WindowEvent) : void
      {
         var _loc2_:String = this.var_1098.getText();
         var _loc3_:String = "model_" + this.var_1097.name;
         if(!this.isMandatoryFieldsFilled())
         {
            return;
         }
         this._navigator.send(new CreateFlatMessageComposer(_loc2_,_loc3_));
         this.var_165.visible = false;
      }
      
      private function close() : void
      {
         this.var_165.visible = false;
         this.var_590.reset();
      }
   }
}

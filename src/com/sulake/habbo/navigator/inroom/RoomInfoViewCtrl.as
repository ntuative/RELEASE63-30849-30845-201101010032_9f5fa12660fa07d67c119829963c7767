package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.ToggleStaffPickMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.utils.HabboWebTools;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_2690:int;
      
      private var var_297:RoomEventViewCtrl;
      
      private var var_227:Timer;
      
      private var var_154:RoomSettingsCtrl;
      
      private var var_226:RoomThumbnailCtrl;
      
      private var var_1065:TagRenderer;
      
      private var var_264:IWindowContainer;
      
      private var var_361:IWindowContainer;
      
      private var var_646:IWindowContainer;
      
      private var var_2022:IWindowContainer;
      
      private var var_2027:IWindowContainer;
      
      private var var_1230:IWindowContainer;
      
      private var var_817:ITextWindow;
      
      private var var_975:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_793:ITextWindow;
      
      private var var_1231:ITextWindow;
      
      private var var_973:ITextWindow;
      
      private var var_795:ITextWindow;
      
      private var var_1494:ITextWindow;
      
      private var var_225:IWindowContainer;
      
      private var var_792:IWindowContainer;
      
      private var var_1495:IWindowContainer;
      
      private var var_2023:ITextWindow;
      
      private var var_645:ITextWindow;
      
      private var var_2026:IWindow;
      
      private var var_1232:IContainerButtonWindow;
      
      private var var_1227:IContainerButtonWindow;
      
      private var var_1226:IContainerButtonWindow;
      
      private var var_1228:IContainerButtonWindow;
      
      private var var_1233:IContainerButtonWindow;
      
      private var var_1225:IContainerButtonWindow;
      
      private var var_1498:IButtonWindow;
      
      private var var_1497:IButtonWindow;
      
      private var var_1496:IButtonWindow;
      
      private var var_794:IWindowContainer;
      
      private var var_1229:ITextWindow;
      
      private var var_974:ITextFieldWindow;
      
      private var var_61:IWindowContainer;
      
      private var var_972:IButtonWindow;
      
      private var var_791:IButtonWindow;
      
      private var var_2025:String;
      
      private var var_2024:String;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_297 = new RoomEventViewCtrl(this._navigator);
         this.var_154 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_226 = new RoomThumbnailCtrl(this._navigator);
         this.var_1065 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_154);
         this.var_227 = new Timer(6000,1);
         this.var_227.addEventListener(TimerEvent.TIMER,this.hideInfo);
      }
      
      public function dispose() : void
      {
         if(this._navigator.toolbar)
         {
            this._navigator.toolbar.events.removeEventListener(HabboToolbarSetIconEvent.const_96,this.onToolbarIconState);
         }
         if(this.var_227)
         {
            this.var_227.removeEventListener(TimerEvent.TIMER,this.hideInfo);
            this.var_227.reset();
            this.var_227 = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_227.reset();
         this.var_297.active = true;
         this.var_154.active = false;
         this.var_226.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_227.reset();
         this.var_154.load(param1);
         this.var_154.active = true;
         this.var_297.active = false;
         this.var_226.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_154.active = true;
         this.var_297.active = false;
         this.var_226.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_227.reset();
         this.var_154.active = false;
         this.var_297.active = false;
         this.var_226.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_995,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function open(param1:Boolean) : void
      {
         this.var_227.reset();
         this.var_297.active = false;
         this.var_154.active = false;
         this.var_226.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(this._navigator.data.enteredGuestRoom.flatId);
         }
         this.refresh();
         this._window.visible = true;
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_48,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         this._window.parent.activate();
         this._window.activate();
         if(!param1)
         {
            this.var_227.start();
         }
      }
      
      public function toggle() : void
      {
         this.var_227.reset();
         this.var_297.active = false;
         this.var_154.active = false;
         this.var_226.active = false;
         this.refresh();
         if(!this._window.visible)
         {
            this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_48,HabboToolbarIconEnum.ROOMINFO,this._window,false));
            this._window.parent.activate();
         }
         else
         {
            this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_455,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info","buttons_container"],0,2);
         this._window.height = Util.getLowestPoint(this._window);
         this._window.y = this._window.desktop.height - this._window.height - 5;
         Logger.log("MAIN: " + this.var_264.rectangle + ", " + this.var_225.rectangle + ", " + this._window.rectangle);
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_264);
         this.var_264.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_154.refresh(this.var_264);
         this.var_226.refresh(this.var_264);
         Util.moveChildrenToColumn(this.var_264,["room_details","room_buttons"],0,2);
         this.var_264.height = Util.getLowestPoint(this.var_264);
         this.var_264.visible = true;
         Logger.log("XORP: " + this.var_361.visible + ", " + this.var_1230.visible + ", " + this.var_646.visible + ", " + this.var_646.rectangle + ", " + this.var_264.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_225);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_297.refresh(this.var_225);
         if(Util.hasVisibleChildren(this.var_225) && !(this.var_154.active || this.var_226.active))
         {
            Util.moveChildrenToColumn(this.var_225,["event_details","event_buttons"],0,2);
            this.var_225.height = Util.getLowestPoint(this.var_225);
            this.var_225.visible = true;
         }
         else
         {
            this.var_225.visible = false;
         }
         Logger.log("EVENT: " + this.var_225.visible + ", " + this.var_225.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","false") == "ClubGiftController";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_154.active && !this.var_226.active && !this.var_297.active)
         {
            this.var_794.visible = true;
            this.var_974.text = this.getEmbedData();
         }
         else
         {
            this.var_794.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this.var_61)
         {
            return;
         }
         if(this.var_154.active)
         {
            this.var_61.visible = false;
            return;
         }
         this.var_61.visible = true;
         if(this.var_972)
         {
            if(this.var_2025 == "exit_homeroom")
            {
               this.var_972.caption = "${navigator.homeroom}";
            }
            else
            {
               this.var_972.caption = "${navigator.hotelview}";
            }
         }
         if(this.var_791)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_791.visible = _loc1_;
            if(this.var_2024 == "0")
            {
               this.var_791.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_791.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_154.active || this.var_226.active)
         {
            return;
         }
         this.var_817.text = param1.roomName;
         this.var_817.height = this.var_817.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_793.text = param1.description;
         this.var_1065.refreshTags(this.var_361,param1.tags);
         this.var_793.visible = false;
         if(param1.description != "")
         {
            this.var_793.height = this.var_793.textHeight + 5;
            this.var_793.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1227,"facebook_logo_small",_loc3_,null,0);
         this.var_1227.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this.var_1232,"thumb_up",_loc4_,null,0);
         this.var_1232.visible = _loc4_;
         this.var_795.visible = !_loc4_;
         this.var_1494.visible = !_loc4_;
         this.var_1494.text = "" + this._navigator.data.currentRoomRating;
         this.refreshStuffPick();
         this._navigator.refreshButton(this.var_361,"home",param2,null,0);
         this._navigator.refreshButton(this.var_361,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_361,["room_name","owner_name_cont","tags","room_desc","rating_cont","staff_pick_button"],this.var_817.y,0);
         this.var_361.visible = true;
         this.var_361.height = Util.getLowestPoint(this.var_361);
      }
      
      private function refreshStuffPick() : void
      {
         var _loc1_:IWindow = this.var_361.findChildByName("staff_pick_button");
         if(!this._navigator.data.roomPicker)
         {
            _loc1_.visible = false;
            return;
         }
         _loc1_.visible = true;
         _loc1_.caption = this._navigator.getText(!!this._navigator.data.currentRoomIsStaffPick ? "navigator.staffpicks.unpick" : "navigator.staffpicks.pick");
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_154.active || this.var_226.active)
         {
            return;
         }
         this.var_975.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_975.height = this.var_975.textHeight + 5;
         this.var_1231.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1231.height = this.var_1231.textHeight + 5;
         Util.moveChildrenToColumn(this.var_646,["public_space_name","public_space_desc"],this.var_975.y,0);
         this.var_646.visible = true;
         this.var_646.height = Math.max(86,Util.getLowestPoint(this.var_646));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_297.active)
         {
            return;
         }
         this.var_2023.text = param1.eventName;
         this.var_645.text = param1.eventDescription;
         this.var_1065.refreshTags(this.var_792,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_645.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_645.height = this.var_645.textHeight + 5;
            this.var_645.y = Util.getLowestPoint(this.var_792) + 2;
            this.var_645.visible = true;
         }
         this.var_792.visible = true;
         this.var_792.height = Util.getLowestPoint(this.var_792);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_154.active || this.var_226.active)
         {
            return;
         }
         this.var_1498.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1226.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this.var_1228.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1233.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1225.visible = this._navigator.data.canEditRoomSettings && param1;
         this.var_1230.visible = Util.hasVisibleChildren(this.var_1230);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_297.active)
         {
            return;
         }
         this.var_1497.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_1496.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_1495.visible = Util.hasVisibleChildren(this.var_1495);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details"));
         this._window.setParamFlag(HabboWindowParam.const_60,false);
         this._window.setParamFlag(HabboWindowParam.const_1453,true);
         this._window.visible = false;
         this.var_264 = IWindowContainer(this.find("room_info"));
         this.var_361 = IWindowContainer(this.find("room_details"));
         this.var_646 = IWindowContainer(this.find("public_space_details"));
         this.var_2022 = IWindowContainer(this.find("owner_name_cont"));
         this.var_2027 = IWindowContainer(this.find("rating_cont"));
         this.var_1230 = IWindowContainer(this.find("room_buttons"));
         this.var_817 = ITextWindow(this.find("room_name"));
         this.var_975 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_793 = ITextWindow(this.find("room_desc"));
         this.var_1231 = ITextWindow(this.find("public_space_desc"));
         this.var_973 = ITextWindow(this.find("owner_caption"));
         this.var_795 = ITextWindow(this.find("rating_caption"));
         this.var_1494 = ITextWindow(this.find("rating_txt"));
         this.var_225 = IWindowContainer(this.find("event_info"));
         this.var_792 = IWindowContainer(this.find("event_details"));
         this.var_1495 = IWindowContainer(this.find("event_buttons"));
         this.var_2023 = ITextWindow(this.find("event_name"));
         this.var_645 = ITextWindow(this.find("event_desc"));
         this.var_1227 = IContainerButtonWindow(this.find("facebook_like_button"));
         this.var_1232 = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_2026 = this.find("staff_pick_button");
         this.var_1226 = IContainerButtonWindow(this.find("add_favourite_button"));
         this.var_1228 = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1233 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1225 = IContainerButtonWindow(this.find("unmake_home_button"));
         this.var_1498 = IButtonWindow(this.find("room_settings_button"));
         this.var_1497 = IButtonWindow(this.find("create_event_button"));
         this.var_1496 = IButtonWindow(this.find("edit_event_button"));
         this.var_794 = IWindowContainer(this.find("embed_info"));
         this.var_1229 = ITextWindow(this.find("embed_info_txt"));
         this.var_974 = ITextFieldWindow(this.find("embed_src_txt"));
         this.var_61 = IWindowContainer(this.find("buttons_container"));
         this.var_972 = IButtonWindow(this.find("exit_room_button"));
         this.var_791 = IButtonWindow(this.find("zoom_button"));
         Util.setProcDirectly(this.var_1226,this.onAddFavouriteClick);
         Util.setProcDirectly(this.var_1228,this.onRemoveFavouriteClick);
         Util.setProcDirectly(this.var_1498,this.onRoomSettingsClick);
         Util.setProcDirectly(this.var_1233,this.onMakeHomeClick);
         Util.setProcDirectly(this.var_1225,this.onUnmakeHomeClick);
         Util.setProcDirectly(this.var_1497,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_1496,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_974,this.onEmbedSrcClick);
         Util.setProcDirectly(this.var_1232,this.onThumbUp);
         Util.setProcDirectly(this.var_2026,this.onStaffPick);
         Util.setProcDirectly(this.var_1227,this.onFacebookLike);
         Util.setProcDirectly(this.var_791,this.onZoomClick);
         Util.setProcDirectly(this.var_972,this.onExitRoomClick);
         this._navigator.refreshButton(this.var_1226,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1228,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1233,"home",true,null,0);
         this._navigator.refreshButton(this.var_1225,"home",true,null,0);
         this._window.findChildByName("close").procedure = this.onCloseButtonClick;
         Util.setProcDirectly(this.var_264,this.onHover);
         Util.setProcDirectly(this.var_225,this.onHover);
         this.var_973.width = this.var_973.textWidth;
         Util.moveChildrenToRow(this.var_2022,["owner_caption","owner_name"],this.var_973.x,this.var_973.y,3);
         this.var_795.width = this.var_795.textWidth;
         Util.moveChildrenToRow(this.var_2027,["rating_caption","rating_txt"],this.var_795.x,this.var_795.y,3);
         this.var_1229.height = this.var_1229.textHeight + 5;
         Util.moveChildrenToColumn(this.var_794,["embed_info_txt","embed_src_txt"],this.var_1229.y,2);
         this.var_794.height = Util.getLowestPoint(this.var_794) + 5;
         this.var_2690 = this._window.y + this._window.height;
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!this._navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.hideInfo(null);
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onStaffPick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new ToggleStaffPickMessageComposer(this._navigator.data.enteredGuestRoom.flatId,this._navigator.data.currentRoomIsStaffPick));
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function onFacebookLike(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.var_974.setSelection(0,this.var_974.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:HabboToolbarEvent = new HabboToolbarEvent(HabboToolbarEvent.const_38);
         _loc3_.iconId = HabboToolbarIconEnum.ZOOM;
         _loc3_.iconName = "ZOOM";
         this._navigator.toolbar.events.dispatchEvent(_loc3_);
      }
      
      private function onExitRoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:HabboToolbarEvent = new HabboToolbarEvent(HabboToolbarEvent.const_38);
         _loc3_.iconId = HabboToolbarIconEnum.EXITROOM;
         _loc3_.iconName = "EXITROOM";
         this._navigator.toolbar.events.dispatchEvent(_loc3_);
      }
      
      private function onToolbarIconState(param1:HabboToolbarSetIconEvent) : void
      {
         if(param1.type != HabboToolbarSetIconEvent.const_96)
         {
            return;
         }
         switch(param1.iconId)
         {
            case HabboToolbarIconEnum.ZOOM:
               this.var_2024 = param1.iconState;
               this.refreshButtons();
               break;
            case HabboToolbarIconEnum.EXITROOM:
               this.var_2025 = param1.iconState;
               this.refreshButtons();
         }
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         this.var_227.reset();
      }
      
      private function hideInfo(param1:Event) : void
      {
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_455,HabboToolbarIconEnum.ROOMINFO,this._window,false));
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
      
      public function registerToolbarEvents() : void
      {
         if(this._navigator.toolbar)
         {
            this._navigator.toolbar.events.addEventListener(HabboToolbarSetIconEvent.const_96,this.onToolbarIconState);
         }
      }
   }
}

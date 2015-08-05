/*
* Copyright (c) 2011 Solid Thinking Interactive All rights reserved.
* Redistribution and use in source and binary forms, with or without modification are not permitted
* Contact Solid Thinking Interactive for more information on licensing 
* http://www.solid-thinking.com
* http://www.fmsguru.com
*
************* 
THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESSED OR IMPLIED WARRANTIES, 
INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND 
FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL SOLID THINKING
INTERACTIVE OR ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, 
EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH 
DAMAGE.
*************
* 
* Basic Private Chat version 4.3 for Wowza
* 10/2011
* Solid Thinking Interactive
* FMSGuru.com
* 
*/

package com.encast{
	import com.carlcalderon.arthropod.Debug;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.controls.Alert;
	
	import events.LoginEvent;
	
	import valueObjects.User;
	
	public class NetConnectionClient extends EventDispatcher{
		
		public static const ON_USERID:String = "onSetUserID";
		public static const ON_RECEIVE_INVITE:String = "onReceiveInvite";
		public static const ON_ACCEPT_INVITE:String = "onAcceptInvite";
		public static const ON_DENY_INVITE:String = "onDenyInvite";
		public static const ON_CANCEL_INVITE:String = "onCancelInvite";
		public static const ON_INVITED_USER_LOGOFF:String = "onInvitedUserLogoff";
		public static const ON_KICKED:String = "onKicked";
		public static const ON_BANNED:String = "onBanned";
		public static const ON_BANNED_USERS_LIST:String = "onBannedUsersList";
		public static const ON_CLOSE_PRIVATE_CHAT:String = "onClosePrivateChat";
		public static const ON_PRIVATE_CHAT:String = "onPrivateChat";
		public static const ON_REFRESH_USERS:String = "onUserRefresh";
		public static const ON_SEND_INVITE:String = "On_Send_Invite";
		public static const ON_MOVE_USER_TO_SHOW:String = "onMoveUserToShow";
		public static const ON_MOVE_USER_TO_GREEN_ROOM:String = "onMoveUSerToGreenRoom";
		public static const ON_MOVE_USER_TO_SHOW_REPLY:String = "onMoveUserToShowReply";
		public static const ON_START_PRIVATE_VID_CHAT:String = "onStartPrivateVidChat";
		public static const ON_CLOSE_PRIVATE_VID_CHAT:String = "onClosePrivateVidChat";
		public static const ON_SHOW_POLL:String = "onShowPoll";
		public static const ON_SHOW_POLL_ANS:String = "onShowPollAns";
		public static const ON_UPDATE_USER:String = "onUpdateUser";
		public static const ON_REMOVE_USER:String = "onRemoveUser";
		
		private var _uID:Number;
		private var _userName:String;
		private var _roleSelected:String;
		
		
		private var _privateRoomName:String;
		
		public function NetConnectionClient(target:IEventDispatcher=null){
			super(target);
		}
		
		public function confirmConnection():String{
			return "confirmed";
		}
		
		protected function loginPanel_loginHandler(event:LoginEvent):void{
			_roleSelected=event.roleSelected;
		
		}
		
		//public function setUserID(uID:Number, userName:String , isPresenter:Boolean, chatHistory:Array):void{
		
		public function setUserID(userOBJ:Object,showUserArray:Array,chatHistory:Object):void{
			var user:User = new User();
			user.userId = userOBJ.userId;
			user.userName = userOBJ.userName;
			user.DOB = userOBJ.birthdate;
			user.provinceName = userOBJ.provinceName;
			user.email = userOBJ.emailId;
			user.city = userOBJ.city;
			user.ip = userOBJ.ip;
			user.userRole = userOBJ.userRole;
			user.onAir = userOBJ.ON_AIR;
			user.showID = userOBJ.showID;
			user.inPrivateChat = userOBJ.inPrivateChat;
			user.withUserID = userOBJ.withUserID;
			user.age = userOBJ.age;
			_uID = Number(user.userId);
			_userName = user.userName;	
			
			var tempObj:Object = new Object();
			
			tempObj.user = user;
			tempObj.showUserArray = showUserArray;
			
			dispatchEvent(new WowzaCustomEvent(NetConnectionClient.ON_USERID, true, false, tempObj));
		}
		
		//BasicPrivateChat class listens for these events
		public function receiveInvite(fromUserName:String):void{
			
		}
		
		public function denyInvite(userId:String):void{
			
		}
		
		public function cancelInvite():void{
			
		}
		
		public function acceptInvite(roomName:String):void{
			
		}
		
		public function onInvitedUserLogoff():void{
			
		}
		
		public function kicked():void{
		
		}
		
		public function banned(msg:String):void{
			
		}
		
		public function receiveBannedUsersList(bannedUsersList:Object):void{
			
		}
		

		public function closePrivateChat(info:Object):void
		{
			
		}
		
		public function setprivateChat(info:Object):void
		{
			
		}
		
		public function onUserRefresh(info:Object):void
		{
			
		}
		
		public function onMoveUserToShow(userObj:Object,infoArray:Array,info:String):void
		{
			var tempObj:Object = new Object();
			tempObj.array = infoArray;
			tempObj.user = userObj;
			dispatchEvent(new WowzaCustomEvent(NetConnectionClient.ON_MOVE_USER_TO_SHOW_REPLY, true, false, tempObj));
		}
		
		public function onMoveUserToGreenRoom(userObj:Object,infoArray:Array):void
		{
			var tempObj:Object = new Object();
			tempObj.array = infoArray;
			tempObj.user = userObj;
			dispatchEvent(new WowzaCustomEvent(NetConnectionClient.ON_MOVE_USER_TO_GREEN_ROOM, true, false, tempObj));
		}
		public function getUserID():Number{
			return _uID;
		}
		
		public function getUserName():String{
			return _userName;
		}
		
		public function getPrivateRoomName():String{
			return _privateRoomName;
		}
		
	
		public function close():void
		{
			AppManager.getInstance().log("Close called on client");
		}
		
		public function inkoveUserToPrivateChat():void
		{
			
		}
		
		public function closeVideoPrivateChat(info:Object,info2:Object):void
		{
			
		}
		
		public function setPollCients(info:Object):void
		{
			
		}
		
		public function setPollAnsCients(info:Object):void
		{
			
		}
		
		public function UpdateViewUser(info:Object):void
		{
			
		}
		
		public function addUser(userInfo:Object,showUserArray:Array):void
		{
			Alert.show("user added");
		}
		
		
		public function removeUser(userID:Number,userName:String,showUserArray:Array):void
		{
			var eveObj:Object = new Object();
			eveObj.userID = userID;
			eveObj.array = showUserArray;
			eveObj.userName = userName;
			var eve:Event = new WowzaCustomEvent("UserRemoved",true,true,eveObj);
			dispatchEvent(eve);
		}
		
		public function onEnlargeVideo(userId:String,userName:String):void
		{
			var eveObj:Object = new Object();
			eveObj.id = userId;
			eveObj.name = userName;
			var eve:Event = new WowzaCustomEvent("enlargeVid",true,true,eveObj);
			dispatchEvent(eve);
		}
		
		public function enableAudio(userId:String,userName:String,status:String):void
		{
			var eveObj:Object = new Object();
			eveObj.id = userId;
			eveObj.name = userName;
			eveObj.status = status;
			var eve:Event = new WowzaCustomEvent("enableAudio",true,true,eveObj);
			dispatchEvent(eve);
		}
	}
	
}
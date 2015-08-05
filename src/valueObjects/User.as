package valueObjects
{
	public class User
	{
		private var _userName:String = "";
		private var _DOB:String = "";
		private var _userId:Number = 0;
		private var _userRole:int = 0;
		private var _city:String = "";
		private var _age:int = 0;
		private var _email:String = "";
		private var _provinceName:String = "";
		private var _showID:String = "";
		private var _ip:String = "";
		private var _onAir:Boolean = false;
		private var _inPrivateChat:Boolean = false;
		private var _withUserID:Number = 0;
		private var _showPos:Number = 0;
		
		public function User(item:Object=null)
		{
			if(item != null)
			{
				this.userId = item.userId;
				this.userName = item.userName;
				this.DOB = item.birthdate;
				this.email = item.emailId;
				this.city = item.city;
				this.showID = item.showId;
				this.provinceName = item.provinceName;
				this.onAir = item.ON_AIR;
				this.inPrivateChat = item.inPrivateChat;
				this.withUserID = item.withUserID;
				this.showPos = item.showPos;
			}
		}
		
		public function set userName(value:String):void
		{
			_userName = value;
		}
		
		public function get userName():String
		{
			return _userName;
		}
		
		public function set showID(value:String):void
		{
			_showID = value;
		}
		
		public function get showID():String
		{
			return _showID;
		}
		
		public function set DOB(value:String):void
		{
			_DOB = value;
		}
		
		public function get DOB():String
		{
			return _DOB;
		}
		
		public function set userId(value:Number):void
		{
			_userId = value;
		}
		
		public function get userId():Number
		{
			return _userId;
		}
		
		public function set showPos(value:Number):void
		{
			_showPos = value;
		}
		
		public function get showPos():Number
		{
			return _showPos;
		}
		
		public function set userRole(value:int):void
		{
			_userRole = value;
		}
		
		public function get userRole():int
		{
			return _userRole;
		}
		
		public function set city(value:String):void
		{
			_city = value;
		}
		
		public function get city():String
		{
			return _city;
		}
		
		public function set email(value:String):void
		{
			_email = value;
		}
		
		public function get email():String
		{
			return _email;
		}
		
		public function set provinceName(value:String):void
		{
			_provinceName = value;
		}
		
		public function get provinceName():String
		{
			return _provinceName;
		}
		
		public function set ip(value:String):void
		{
			_ip = value;
		}
		
		public function get ip():String
		{
			return _ip;
		}
		
		public function set age(value:int):void
		{
			_age = value;
		}
		
		public function get age():int
		{
			return _age;
		}
		
		public function set onAir(value:Boolean):void
		{
			_onAir = value;
		}
		
		public function get onAir():Boolean
		{
			return _onAir;
		}
		public function set inPrivateChat(value:Boolean):void
		{
			_inPrivateChat = value;
		}
		
		public function get inPrivateChat():Boolean
		{
			return _inPrivateChat;
		}
		
		public function set withUserID(value:Number):void
		{
			_withUserID = value;
		}
		
		public function get withUserID():Number
		{
			return _withUserID;
		}
		
	}
}
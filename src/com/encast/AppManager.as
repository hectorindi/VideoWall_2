package com.encast
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;

	public class AppManager extends EventDispatcher
	{		
		
		protected static var _instance:AppManager = new AppManager();
		
		private var _userName:String = "";
		private var _city:String = "";
		private var _age:int = 0;
		private var _userID:Number = 0;
		private var _userRole:int = 0;
		private var _showArrPos:int = 0;
		private var _showID:int = 0;
		private var _showUserArray:Array = new Array();
		
		
		public function AppManager(target:IEventDispatcher=null)
		{
			super(target);
			if(_instance)
			{
				throw new Error ("cannot create a new instance.Please use AppManager.getInstance()");
			}
		}
		
		public static function getInstance():AppManager
		{
			return _instance;
		}
		
		public function set userName(value:String):void
		{
			if(value != null || value != "")
			{
				_userName = value;
			}
		}
		
		public function get userName():String
		{
			
			if(_userName != null || _userName != "")
			{
				return _userName;
			}
			else
			{
				return "defaultName";
			}
		}
		
		public function set city(value:String):void
		{
			if(value != null || value != "")
			{
				_city = value;
			}
		}
		
		public function get city():String
		{
			
			if(_city != null || _city != "")
			{
				return _city;
			}
			else
			{
				return "defaultName";
			}
		}
		
		public function set userID(value:Number):void
		{
			if(value)
			{
				_userID = value;
			}
		}
		
		public function get userID():Number
		{
			
			if(_userName)
			{
				return _userID;
			}
			else
			{
				return 0;
			}
		}
		
		public function set userRole(value:int):void
		{
			if(value)
			{
				_userRole = value;
			}
		}
		
		public function get userRole():int
		{
			
			if(_userRole)
			{
				return _userRole;
			}
			else
			{
				return 0;
			}
		}
		
		public function set showID(value:int):void
		{
			if(value)
			{
				_showID = value;
			}
		}
		
		public function get showID():int
		{
			
			if(_showID != 0) 
			{
				return _showID;
			}
			else
			{
				return 0;
			}
		}
		
		public function set age(value:int):void
		{
			if(value)
			{
				_age = value;
			}
		}
		
		public function get age():int
		{
			
			if(_age)
			{
				return _age;
			}
			else
			{
				return 0;
			}
		}
	
		
		public function set showArrPos(value:int):void
		{
			if(value >= 0 || value <= 6)
			{
				_showArrPos = value;
			}
		}
		
		public function get showArrPos():int
		{
			
			if(_showArrPos)
			{
				return _showArrPos;
			}
			else
			{
				return 0;
			}
		}
		
		public function set ShowUserArray(value:Array):void
		{
			if(value != null)
			{
				_showUserArray = value;
			}
		}
		
		public function get ShowUserArray():Array
		{			
			if(_showUserArray != null || _showUserArray.length > 0)
			{
				return _showUserArray;
			}
			else
			{
				return new Array();
			}
		}
		
		public function log (text : String, clear : Boolean = false) : void
		{
			var file : File = File.desktopDirectory.resolvePath
				("Output_HOST.log");
			var fileMode : String = (clear ? FileMode.WRITE :
				FileMode.APPEND);
			
			var fileStream : FileStream = new FileStream ();
			fileStream.open (file, fileMode);
			
			fileStream.writeMultiByte (text + "\r\n", File.systemCharset);
			
			fileStream.close ();
		}
	}
}
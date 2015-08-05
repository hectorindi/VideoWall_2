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
package events{
	import flash.events.Event;
	
	public class LoginEvent extends Event{
		
		public var userName:String;
		public var password:String
		public var roleSelected:String;
		public var showID:String;
		
		public function LoginEvent(type:String){
			super(type);
		}
		
		override public function clone():Event{
			var eventObj:LoginEvent = new LoginEvent(type);
			eventObj.userName = this.userName;
			eventObj.password=this.password;
			eventObj.roleSelected=this.roleSelected;
			eventObj.showID=this.showID;
			return eventObj;
		}
	}
}
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
* Basic Private Chat version 4.5 for Wowza
* 10/2011
* Solid Thinking Interactive
* FMSGuru.com
* 
*/

package com.encast{
	public class ConnectionProperties{
		
		private var SERVERIP:String = "127.0.0.1:1935";
		private var IntranetIP:String = "127.0.0.1:1935";
		//private var SERVERIP:String = "mediastream.abs-cbn.com";
		//private var IntranetIP:String = "mediastream.abs-cbn.com";
		//private var IntranetIP:String = "10.255.253.2:1935";
		//private var SERVERIP:String = "10.255.253.2:1935";
		//private var APPLICATION:String = "VirtualAudience";
		private var APPLICATION:String = "VirtualAudience";
		
		private var _INSTANCE:String = "VA1";
		
		public function ConnectionProperties(){
			
		}
		
		public function setServerIP(ip:String):void{
			SERVERIP = ip;
		}
		
		public function setApplicationName(app:String):void{
			APPLICATION = app;
		}
		
		public function setInstanceName(inst:String):void{
			_INSTANCE = inst;
		}
		
		public function getServerIP():String{
			return SERVERIP;
		}
		
		public function getIntranetIP():String{
			return IntranetIP;
		}
		
		public function getApplicationName():String{
			return APPLICATION;
		}
		
		public function getInstanceName():String{
			return _INSTANCE;
		}
	}
}
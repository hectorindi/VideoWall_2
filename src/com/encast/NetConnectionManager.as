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
	import flash.net.NetConnection;
	import flash.events.NetStatusEvent;
	import flash.events.SecurityErrorEvent;
	import flash.events.AsyncErrorEvent;
	import flash.events.IOErrorEvent;
	import flash.net.ObjectEncoding;
	
	public class NetConnectionManager extends NetConnection{
		
		private var _debugging:Boolean = true;
		
		public function NetConnectionManager():void{
			super();
			addEventListener(NetStatusEvent.NET_STATUS, onConnectionStatus);
			addEventListener(SecurityErrorEvent.SECURITY_ERROR, onSecurityError);
			addEventListener(AsyncErrorEvent.ASYNC_ERROR, onAsyncError);
			addEventListener(IOErrorEvent.IO_ERROR, onIOError);
		}
		
		public function createNetConnection(command:String, ... arguments):void{
			arguments.unshift(command);
			super.connect.apply(this, arguments);
		}
		
		protected function onConnectionStatus(event:NetStatusEvent):void{
			debug("#onConnectionStatusEvent# " + event.info.code);
			debug("uri: " + uri);
			
			var infoObjectsArray:Array = event.info.code.split(".");
			
			if (infoObjectsArray[1] == "Connect"){
				switch (infoObjectsArray[2]){
					case "Success":
						dispatchEvent(new NetStatusEvent("onConnect", false, false, event.info));
						break;
					case "Failed":
						dispatchEvent(new NetStatusEvent("onFailed", false, false, event.info));
						break;
					case "Rejected":
						dispatchEvent(new NetStatusEvent("onRejected", false, false, event.info));
						break;
					case "Closed":
						dispatchEvent(new NetStatusEvent("onClosed", false, false, event.info));
						break;
				}
			}
		}		
		
		protected function onSecurityError(event:SecurityErrorEvent):void{
			debug("#onSecurityError# " + event.text);
		}
		
		protected function onAsyncError(event:AsyncErrorEvent):void{
			debug("#onAsyncError# " + event.error.message);
		}
		
		
		protected function onIOError(event:IOErrorEvent):void{
			debug("#onIOError# " + event.text);
		}
		
		private function debug(msg:String):void{
			if(_debugging == true){
				trace("## NETCONNECTIONMANAGER ## " + msg);
			}
		}
		
	}
	
}
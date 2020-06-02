/*
 Licensed to the Apache Software Foundation (ASF) under one
 or more contributor license agreements.  See the NOTICE file
 distributed with this work for additional information
 regarding copyright ownership.  The ASF licenses this file
 to you under the Apache License, Version 2.0 (the
 "License"); you may not use this file except in compliance
 with the License.  You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing,
 software distributed under the License is distributed on an
 "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 KIND, either express or implied.  See the License for the
 specific language governing permissions and limitations
 under the License.
 */

#import "CDVAllianzInAppBrowser.h"
#import "CDVAllianzInAppBrowserOptions.h"
#import "CDVAllianzWKInAppBrowser.h"
#import <Cordova/CDVPluginResult.h>


#pragma mark CDVAllianzInAppBrowser

@implementation CDVAllianzInAppBrowser

- (void)open:(CDVInvokedUrlCommand*)command
{
    NSString* options = [command argumentAtIndex:2 withDefault:@"" andClass:[NSString class]];
    CDVAllianzInAppBrowserOptions* browserOptions = [CDVAllianzInAppBrowserOptions parseOptions:options];
    [[CDVAllianzWKInAppBrowser getInstance] open:command];
}

- (void)close:(CDVInvokedUrlCommand*)command
{
    [[CDVAllianzWKInAppBrowser getInstance] close:command];
}


- (void)show:(CDVInvokedUrlCommand*)command
{
    [[CDVAllianzWKInAppBrowser getInstance] show:command];

}

- (void)hide:(CDVInvokedUrlCommand*)command
{
    [[CDVAllianzWKInAppBrowser getInstance] hide:command];

}

- (void)injectScriptCode:(CDVInvokedUrlCommand*)command
{
    [[CDVAllianzWKInAppBrowser getInstance] injectScriptCode:command];
}

- (void)injectScriptFile:(CDVInvokedUrlCommand*)command
{
    [[CDVAllianzWKInAppBrowser getInstance] injectScriptFile:command];

}

- (void)injectStyleCode:(CDVInvokedUrlCommand*)command
{
    [[CDVAllianzWKInAppBrowser getInstance] injectStyleCode:command];

}

- (void)injectStyleFile:(CDVInvokedUrlCommand*)command
{
    [[CDVAllianzWKInAppBrowser getInstance] injectStyleFile:command];

}

- (void)loadAfterBeforeload:(CDVInvokedUrlCommand*)command
{
   [[CDVAllianzWKInAppBrowser getInstance] loadAfterBeforeload:command];

}


@end

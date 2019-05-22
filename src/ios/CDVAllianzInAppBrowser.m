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
#import "CDVAllianzUIInAppBrowser.h"
#import "CDVAllianzWKInAppBrowser.h"
#import <Cordova/CDVPluginResult.h>


#pragma mark CDVAllianzInAppBrowser

@implementation CDVAllianzInAppBrowser

- (void)pluginInitialize
{
    // default values
    self.usewkwebview = NO;

#if __has_include("CDVWKWebViewEngine.h")
    self.wkwebviewavailable = YES;
#else
    self.wkwebviewavailable = NO;
#endif
}

- (void)open:(CDVInvokedUrlCommand*)command
{
    NSString* options = [command argumentAtIndex:2 withDefault:@"" andClass:[NSString class]];
    CDVAllianzInAppBrowserOptions* browserOptions = [CDVAllianzInAppBrowserOptions parseOptions:options];
    if(browserOptions.usewkwebview && !self.wkwebviewavailable){
        [self.commandDelegate sendPluginResult:[CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:@{@"type":@"loaderror", @"message": @"usewkwebview option specified but but no plugin that supplies a WKWebView engine is present"}] callbackId:command.callbackId];
        return;
    }
    self.usewkwebview = browserOptions.usewkwebview;
    if(self.usewkwebview){
        [[CDVAllianzWKInAppBrowser getInstance] open:command];
    }else{
        [[CDVAllianzUIInAppBrowser getInstance] open:command];
    }
}

- (void)close:(CDVInvokedUrlCommand*)command
{
    if(self.usewkwebview){
        [[CDVAllianzWKInAppBrowser getInstance] close:command];
    }else{
        [[CDVAllianzUIInAppBrowser getInstance] close:command];
    }
}


- (void)show:(CDVInvokedUrlCommand*)command
{
    if(self.usewkwebview){
        [[CDVAllianzWKInAppBrowser getInstance] show:command];
    }else{
        [[CDVAllianzUIInAppBrowser getInstance] show:command];
    }
}

- (void)hide:(CDVInvokedUrlCommand*)command
{
    if(self.usewkwebview){
        [[CDVAllianzWKInAppBrowser getInstance] hide:command];
    }else{
        [[CDVAllianzUIInAppBrowser getInstance] hide:command];
    }
}


- (void)injectScriptCode:(CDVInvokedUrlCommand*)command
{
    if(self.usewkwebview){
        [[CDVAllianzWKInAppBrowser getInstance] injectScriptCode:command];
    }else{
        [[CDVAllianzUIInAppBrowser getInstance] injectScriptCode:command];
    }
}

- (void)injectScriptFile:(CDVInvokedUrlCommand*)command
{
     if(self.usewkwebview){
        [[CDVAllianzWKInAppBrowser getInstance] injectScriptFile:command];
    }else{
        [[CDVAllianzUIInAppBrowser getInstance] injectScriptFile:command];
    }
}

- (void)injectStyleCode:(CDVInvokedUrlCommand*)command
{
    if(self.usewkwebview){
        [[CDVAllianzWKInAppBrowser getInstance] injectStyleCode:command];
    }else{
        [[CDVAllianzUIInAppBrowser getInstance] injectStyleCode:command];
    }
}

- (void)injectStyleFile:(CDVInvokedUrlCommand*)command
{
    if(self.usewkwebview){
        [[CDVAllianzWKInAppBrowser getInstance] injectStyleFile:command];
    }else{
        [[CDVAllianzUIInAppBrowser getInstance] injectStyleFile:command];
    }
}

- (void)loadAfterBeforeload:(CDVInvokedUrlCommand*)command
{
    if(self.usewkwebview){
        [[CDVAllianzWKInAppBrowser getInstance] loadAfterBeforeload:command];
    }else{
        [[CDVAllianzUIInAppBrowser getInstance] loadAfterBeforeload:command];
    }
}


@end

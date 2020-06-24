//
//  ViewController.h
//  iOSVisio
//
//  Created by Benoit Vasseur on 14/02/2019.
//  Copyright © 2019 coreoz. All rights reserved.
//

@import UIKit;
@import WebKit;

@interface VWVisioViewController : UIViewController <WKScriptMessageHandler>

/*
** Webview will be create with default full screen size in viewDidLoad.
** If not nil in viewDidLoad (for exemple if created in interface builder),
** webView will not be re-instantiated
*/
@property (nonatomic, strong) WKWebView *webView;
/*
** Override this method to get notified for errors
** Visio Error domain is defined in VWErrorDomain.h
*/
- (void)visioDidEncounterError:(NSError *)error;

/*
** VWVisioViewController is implementing some methods of WKScriptMessageHandler
** In case of overriding of these methods, make sure to make a super call
*/
- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message;

@end


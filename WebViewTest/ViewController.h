//
//  ViewController.h
//  WebViewTest
//
//  Created by WaRTanK on 2021/11/8.
//

#import <UIKit/UIKit.h>
#import <Webkit/WebKit.h>

@interface ViewController : UIViewController <WKUIDelegate, WKNavigationDelegate>

@property (strong, nonatomic) IBOutlet WKWebView *webview;

@end


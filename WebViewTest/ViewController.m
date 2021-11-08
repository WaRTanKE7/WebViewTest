//
//  ViewController.m
//  WebViewTest
//
//  Created by WaRTanK on 2021/11/8.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    self.webview = [[WKWebView alloc] init];
    [self.webview setUIDelegate:self];
    [self.webview setNavigationDelegate:self];
    
    NSURL *url = [NSURL URLWithString:@"https://www.google.com"];
    [self.webview loadRequest:[NSURLRequest requestWithURL:url]];
}

- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler {
    NSString *urlString = navigationAction.request.URL.absoluteString;
    NSLog(@"url: %@", urlString);
    
    if (![urlString isEqualToString:@"about:blank"]) {
        decisionHandler(WKNavigationActionPolicyCancel);
        return;
    }
    decisionHandler(WKNavigationActionPolicyAllow);
}

@end

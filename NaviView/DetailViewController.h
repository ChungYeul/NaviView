//
//  DetailViewController.h
//  NaviView
//
//  Created by SDT-1 on 2014. 1. 10..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (strong) NSString *urlStr;
@end

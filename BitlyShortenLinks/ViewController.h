//
//  ViewController.h
//  BitlyShortenLinks
//
//  Created by Yung Dai on 2015-04-17.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


// These are the properties for the Bitly API
@property (strong, nonatomic) NSString *APILogin;
@property (strong, nonatomic) NSString *APIKey;
@property (strong, nonatomic) NSString *longURL;
@property (strong, nonatomic) NSString *requestString;

@end


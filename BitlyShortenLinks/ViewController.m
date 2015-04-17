//
//  ViewController.m
//  BitlyShortenLinks
//
//  Created by Yung Dai on 2015-04-17.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // impliment the properties
    _APIKey = @"R_bccb6113c3da4dc3b5ea5c043989ad77";
    _APILogin = @"o_4abrvavk42";
    _longURL = @"http://www.bitmakerlabs.com";
    _requestString = [NSString stringWithFormat:@"http://api.bit.ly/shorten?version=2.0.1&longUrl=%@&login=%@&apiKey=%@&format=json", _longURL, _APILogin, _APIKey];

    
    // pass in the requestString into the requestURL
    NSURL *requestURL = [NSURL URLWithString:_requestString];
    NSURLSession *session = [NSURLSession sharedSession];
    
    
    // Do any additional setup after load the view, typical from a nib.
    [[session dataTaskWithURL:requestURL completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        // handle errors
        NSError *e = nil;
        NSDictionary *bitlyJSON = [NSJSONSerialization JSONObjectWithData:data options:0 error:&e];
        
        if (!error) {
            NSDictionary *results = [bitlyJSON objectForKey:@"results"];
            NSDictionary *resultsForLongURL = [results objectForKey:_longURL];
            NSString *shortURL = [resultsForLongURL objectForKey:@"shortUrl"];
            NSLog(@"Short URL = %@", shortURL);
        }
        
        // parse the JSON
        
        // return the JSON value
        
        
    }]resume];
    sleep(60);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

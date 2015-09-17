//
//  SwagModel.m
//  SwagBag
//
//  Created by Seth on 5/31/15.
//  Copyright (c) 2015 SETH. All rights reserved.
//

#import "SwagModel.h"


@interface SwagModel()

@property (nonatomic, strong)NSMutableDictionary *jsonDictionary;

@end

@implementation SwagModel



- (NSMutableDictionary *)jsonDictionary
{
    if (!_jsonDictionary)
        _jsonDictionary = [[NSMutableDictionary alloc] init];
    return _jsonDictionary;
}



//// set the url and fetch the json data
- (void)getJSONData
{
    

    NSURL *nsURL = [NSURL URLWithString:@"http://prolific-interview.herokuapp.com/55690024bc12fb0009df5baf/"];    NSData *jsonData = [NSData dataWithContentsOfURL:nsURL];
    self.jsonDictionary = [NSJSONSerialization JSONObjectWithData:jsonData
                                                          options: NSJSONReadingMutableContainers // kNilOptions
                                                            error:nil];
    
    NSLog(@"JSON result: %@", self.jsonDictionary);
    
}



- (void)loadDataToArray
{
    [self getJSONData];
    
    self.swagBooks = [[self.jsonDictionary objectForKey:@"list"]objectForKey:@"resources"];
    
    NSLog(@"CurrencyArray: %@", self.swagBooks);
    
}


@end


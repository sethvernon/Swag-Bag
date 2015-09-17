//
//  SwagModel.h
//  SwagBag
//
//  Created by Seth on 5/31/15.
//  Copyright (c) 2015 SETH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SwagModel : NSObject

//@property (nonatomic, strong)NSArray *symbolArray;
@property (nonatomic, strong)NSArray *swagBooks;

- (void)getJSONData;
- (void)loadDataToArray;


@end


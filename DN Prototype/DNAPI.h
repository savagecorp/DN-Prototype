//
//  DNAPI.h
//  DN Prototype
//
//  Created by Brett Mascavage on 8/13/14.
//  Copyright (c) 2014 Brett Mascavage. All rights reserved.
//

#import <Foundation/Foundation.h>

// Referencing Variables
extern NSString *const DNAPIBaseURL;
extern NSString *const DNAPIStories;
extern NSString *const DNAPIComments;
extern NSString *const DNAPILogin;

//@interface DNAPI : NSObject
@interface NSURLRequest (DNAPI)

// Functions
+ (instancetype)requestWithPattern:(NSString *)string object:(id)object;
+ (instancetype)postRequest:(NSString *)string parameters:(NSDictionary *)parameters;
+ (instancetype)deleteRequest:(NSString *)string parameters:(NSDictionary *)parameters;
+ (instancetype)requestWithMethod:(NSString *)method
                              url:(NSString *)url
                       parameters:(NSDictionary *)parameters;

@end

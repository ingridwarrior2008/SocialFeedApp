//
//  NSDate+Date.m
//  SocialFeedApp
//
//  Created by pc-laptop on 2/26/19.
//  Copyright © 2019 Ingrid Guerrero. All rights reserved.
//

#import "NSDate+Date.h"

@implementation NSDate (Date)

-(NSString *)postformatDate
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"EEEE, d MMM yyyy"];
    return [formatter stringFromDate:self];
}

@end

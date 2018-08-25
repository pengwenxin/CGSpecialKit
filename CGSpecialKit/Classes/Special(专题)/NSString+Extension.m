//
//  NSString+Extension.m
//  Pods
//
//  Created by kepuna on 2017/9/18.
//
//

#import "NSString+Extension.h"

@implementation NSString (Extension)
    
+ (instancetype)ff_imagePathWithName:(NSString *)imageName bundle:(NSString *)bundle targetClass:(Class)targetClass {
    
        NSInteger scale = [[UIScreen mainScreen] scale];
        NSBundle *currentBundle = [NSBundle bundleForClass:targetClass];
        NSString *name = [NSString stringWithFormat:@"%@@%zdx",imageName,scale];
        NSString *dir = [NSString stringWithFormat:@"%@.bundle",bundle];
        NSString *path = [currentBundle pathForResource:name ofType:@"png" inDirectory:dir];
        return path ? path : @"";
}


@end

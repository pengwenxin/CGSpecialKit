//
//  Target_Special.h
//  Pods
//
//  Created by kepuna on 2017/9/13.
//
//

#import <Foundation/Foundation.h>
#import "FFSpecialKit.h"

@interface Target_Special : NSObject

- (UIViewController *)Action_specialDetailViewController:(NSDictionary *)params;
- (NSDictionary *)Action_specialReformerWithOriginData:(NSDictionary *)params;
- (NSDictionary<FFReformProtocol> *)Action_specialReformer:(NSDictionary *)params;
- (APIRequest *)Action_specialAPIRequest:(NSDictionary *)params;

@end

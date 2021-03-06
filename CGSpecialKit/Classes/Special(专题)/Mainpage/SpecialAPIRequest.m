//
//  SpecialAPIRequest.m
//  FlowerField
//
//  Created by kepuna on 2017/9/5.
//  Copyright © 2017年 Triangle. All rights reserved.
//

#import "SpecialAPIRequest.h"

@implementation SpecialAPIRequest

- (NSString *)apiRequestURL {
    return @"http://m.htxq.net/servlet/SysArticleServlet?action=mainList";
}

- (NSDictionary *)apiRequestParams {
    
//    NSMutableDictionary *params = @{}.mutableCopy;
//    params[@"currentPageIndex"] = @0;
//    params[@"pageSize"] = @(5);
//    params[@"cateId"] = @"";
    
     return @{@"AAA":@"BBB"};
//    return params.copy;
}

- (id)fetchDataWithReformer:(NSDictionary<FFReformProtocol> *)reformer {
    NSMutableArray *tempArray = [NSMutableArray array];
    for (NSDictionary *dict in self.responseData[@"data"][@"list"]) {
        
        
        NSDictionary *dataDict = [reformer reformData:dict];
        [tempArray addObject:dataDict];
    }
    return tempArray.copy;
}

@end

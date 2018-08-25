//
//  CTMediator+Author.h
//  Pods
//
//  Created by kepuna on 2017/9/13.
//
//

#import <UIKit/UIKit.h>
#import <CTMediator/CTMediator.h>
#import <TTAPIsKit/APIRequest.h>

@interface CTMediator (Author)

- (UIViewController *)authorDetailViewController;
- (NSDictionary *)authorReformerWithOriginData:(NSDictionary *)data;
- (NSDictionary <FFReformProtocol> *)authorReformer;
- (APIRequest *)authorAPIRequest;

@end

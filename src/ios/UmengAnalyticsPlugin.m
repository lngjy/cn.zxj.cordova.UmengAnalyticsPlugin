#import "UmengAnalyticsPlugin.h"
#import "MobClick.h"
#import <Cordova/CDVPluginResult.h>

@implementation UmengAnalyticsPlugin

- (void)init:(CDVInvokedUrlCommand*)command
{
    NSString* callbackId = command.callbackId;
    [MobClick startWithAppkey:@"56a5ed6ae0f55aa6e9001724" reportPolicy:BATCH   channelId:@"Web"];

    CDVPluginResult* pluginResult = nil;
    [self.commandDelegate sendPluginResult:pluginResult callbackId:callbackId];
}

@end

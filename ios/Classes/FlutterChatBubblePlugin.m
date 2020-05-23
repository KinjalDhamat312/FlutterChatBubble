#import "FlutterChatBubblePlugin.h"
#if __has_include(<flutter_chat_bubble/flutter_chat_bubble-Swift.h>)
#import <flutter_chat_bubble/flutter_chat_bubble-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_chat_bubble-Swift.h"
#endif

@implementation FlutterChatBubblePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterChatBubblePlugin registerWithRegistrar:registrar];
}
@end

//
//  SlateTestMode.h
//  Slate
//

#import <Foundation/Foundation.h>

NS_INLINE BOOL SlateIsRunningUnderXCTest(void) {
  return [[[NSProcessInfo processInfo] environment] objectForKey:@"XCTestConfigurationFilePath"] != nil;
}

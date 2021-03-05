//
//  main.m
//  DyldLoadDemo
//
//  Created by sunner on 2021/3/5.
//  Copyright © 2021 sunner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

void RegisterInjected() {
#if DEBUG
    [[NSBundle bundleWithPath:@"/Applications/InjectionIII.app/Contents/Resources/iOSInjection.bundle"] load];
#endif
}

int main(int argc, char * argv[]) {
    RegisterInjected();
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}

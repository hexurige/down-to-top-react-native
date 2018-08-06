//
//  AppDelegate.swift
//  ios
//
//  Created by jackie on 6/08/18.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    // Create the base window
    var window : UIWindow? = UIWindow(frame: UIScreen.main.bounds)


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        // Setup any initial properties we want included
        let initialProperties: [String: Any] = [:]
        // Define the name of the initial module
        let moduleName = "NativeApp"
        // Define the url that will be used to find the entry file
        let bundleURL = RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "src/index", fallbackResource: nil)
        // Create the React Native view that will render the module with the properties
        let view = RCTRootView(bundleURL: bundleURL, moduleName: moduleName, initialProperties: initialProperties, launchOptions: launchOptions)
        view?.backgroundColor = UIColor.white
        // Create the controller to display the view
        let controller = UIViewController()
        controller.view = view
        // Add the controller to the window
        window?.rootViewController = controller
        window?.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}


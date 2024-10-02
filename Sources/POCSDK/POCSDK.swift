//
//  POCSDK.swift
//  
//
//  Created by Manuel Loigeret on 2024-10-02.
//

import UIKit

public class POCSDK {
    public init() {}

    public func launch(from viewController: UIViewController) {
        let sdkViewController = POCSDKViewController()
        viewController.present(sdkViewController, animated: true, completion: nil)
    }
}

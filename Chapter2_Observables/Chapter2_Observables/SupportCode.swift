//
//  SupportCode.swift
//  Chapter2_Observables
//
//  Created by liesheng on 2021/1/16.
//

import Foundation

public func example(of description: String,
                    action: () -> Void) {
    print("\n--- Example of:", description, "---")
    action()
}

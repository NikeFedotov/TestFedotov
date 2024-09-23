//
//  AppInfo.swift
//  TestFedotov
//
//  Created by Nikita Fedotov on 23.09.2024.
//

import Foundation

struct AppInfo {
    var bundleID: String {
        return Bundle.main.bundleIdentifier ?? "Unknown"
    }
}

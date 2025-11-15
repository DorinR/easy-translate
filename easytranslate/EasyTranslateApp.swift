//
//  easytranslateApp.swift
//  easytranslate
//
//  Created by Dorin Rogov on 2025-11-15.
//

import AppKit
import SwiftUI

/// AppDelegate to manage the menu bar icon and menu
class AppDelegate: NSObject, NSApplicationDelegate {
    private var statusItem: NSStatusItem?

    func applicationDidFinishLaunching(_: Notification) {
        // Create status bar item
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)

        // Set the icon for the menu bar
        if let button = statusItem?.button {
            button.image = NSImage(systemSymbolName: "globe", accessibilityDescription: "Easy Translate")
        }

        // Create the menu
        let menu = NSMenu()

        // Add placeholder menu items
        menu.addItem(NSMenuItem(title: "Option 1", action: nil, keyEquivalent: ""))
        menu.addItem(NSMenuItem(title: "Option 2", action: nil, keyEquivalent: ""))

        // Add separator
        menu.addItem(NSMenuItem.separator())

        // Add quit option
        let quitItem = NSMenuItem(title: "Quit Easy Translate", action: #selector(quitApp), keyEquivalent: "q")
        quitItem.target = self
        menu.addItem(quitItem)

        // Attach the menu to the status item
        statusItem?.menu = menu
    }

    @objc func quitApp() {
        NSApplication.shared.terminate(nil)
    }
}

@main
struct EasyTranslateApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

//
//  AppDelegate.swift
//  WebKitVideoTest
//
//  Created by Jim Puls on 3/31/21.
//

import Cocoa
import WebKit

// MARK: - AppDelegate

@main class AppDelegate: NSObject, NSApplicationDelegate {
  class WebViewController: NSViewController {
    lazy var webView = WKWebView(frame: CGRect(x: 0, y: 0, width: 1024, height: 768))

    override func loadView() {
      view = webView
    }

    override func viewDidAppear() {
      super.viewDidAppear()

      let request = URLRequest(url: URL(string: "https://webrtc.github.io/samples/src/content/getusermedia/gum/")!)
      webView.load(request)
    }
  }

  var window: NSWindow!

  func applicationDidFinishLaunching(_: Notification) {
    window = NSWindow(contentRect: .zero, styleMask: [.titled, .closable, .miniaturizable, .resizable, .fullSizeContentView], backing: .buffered, defer: false)
    window.contentViewController = WebViewController()
    window.makeKeyAndOrderFront(nil)
  }
}

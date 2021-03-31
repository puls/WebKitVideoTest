# WebKitVideoTest

This is a minimal reduction of an error we're seeing trying to use the camera in a WebKit app under macOS sandboxing.

It simply loads the [simplest sample from the WebRTC samples page](https://webrtc.github.io/samples/) in a `WKWebView`.

Clicking "open camera" results in the following errors in the logs:

```
021-03-31 14:01:34.130984-0700 WebKitVideoTest[22789:8617237] Could not create a 'com.apple.webkit.camera' sandbox extension

Could not create a 'com.apple.webkit.camera' sandbox extension
2021-03-31 14:01:34.131027-0700 WebKitVideoTest[22789:8617237] Could not create a required sandbox extension, capture will fail!

Could not create a required sandbox extension, capture will fail!
```

If I remove the App Sandbox entitlement, everything works correctly.

import 'dart:js' as js;

/// Sends a page view event to Google Analytics.
/// [pagePath] should be the route or page name, e.g. "/about" or "/projects"
void sendPageView(String pagePath) {
  try {
    js.context.callMethod('gtag', [
      'event',
      'page_view',
      {
        'page_path': pagePath,
      }
    ]);
    print("✅ GA Page view sent: $pagePath");
  } catch (e) {
    print("⚠️ Failed to send page view: $e");
  }
}

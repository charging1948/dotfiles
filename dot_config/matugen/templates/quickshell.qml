import Quickshell
import QtQuick

Singleton {
  function alpha(color, alpha) {
    return Qt.rgba(color.r, color.g, color.b, alpha);
  }

  readonly property url wallpaperImage: "{{image}}"

<* for name, value in colors *>
  property color {{name}}: Qt.rgba({{value.default.red}} / 255, {{value.default.green}} / 255, {{value.default.blue}} / 255, {{value.default.alpha}} / 255)
<* endfor *>
}

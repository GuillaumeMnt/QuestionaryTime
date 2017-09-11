// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

#if os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIColor
  typealias Color = UIColor
#elseif os(OSX)
  import AppKit.NSColor
  typealias Color = NSColor
#endif

// swiftlint:disable operator_usage_whitespace
extension Color {
  convenience init(rgbaValue: UInt32) {
    let red   = CGFloat((rgbaValue >> 24) & 0xff) / 255.0
    let green = CGFloat((rgbaValue >> 16) & 0xff) / 255.0
    let blue  = CGFloat((rgbaValue >>  8) & 0xff) / 255.0
    let alpha = CGFloat((rgbaValue      ) & 0xff) / 255.0

    self.init(red: red, green: green, blue: blue, alpha: alpha)
  }
}
// swiftlint:enable operator_usage_whitespace

// swiftlint:disable file_length
// swiftlint:disable line_length

// swiftlint:disable type_body_length
enum ColorName {
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#b2b2b2"></span>
  /// Alpha: 100% <br/> (0xb2b2b2ff)
  case ashGrey
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#000000"></span>
  /// Alpha: 100% <br/> (0x000000ff)
  case black
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#102933"></span>
  /// Alpha: 100% <br/> (0x102933ff)
  case blackBlue
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#091f2a"></span>
  /// Alpha: 100% <br/> (0x091f2aff)
  case blackerBlue
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#0b222d"></span>
  /// Alpha: 100% <br/> (0x0b222dff)
  case darkJungle
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#504c49"></span>
  /// Alpha: 100% <br/> (0x504c49ff)
  case gray
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ebebeb"></span>
  /// Alpha: 100% <br/> (0xebebebff)
  case isabeline
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#188dfb"></span>
  /// Alpha: 100% <br/> (0x188dfbff)
  case lightBlue
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#efefef"></span>
  /// Alpha: 100% <br/> (0xefefefff)
  case lightGray
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#78f6b2"></span>
  /// Alpha: 100% <br/> (0x78f6b2ff)
  case lightGreen
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#bdbebd"></span>
  /// Alpha: 100% <br/> (0xbdbebdff)
  case silver
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#102a34"></span>
  /// Alpha: 100% <br/> (0x102a34ff)
  case tabbarGradientEnd
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#061c27"></span>
  /// Alpha: 100% <br/> (0x061c27ff)
  case tabbarGradientStart
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#cdd1d3"></span>
  /// Alpha: 100% <br/> (0xcdd1d3ff)
  case veryLightGray
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#623588"></span>
  /// Alpha: 100% <br/> (0x623588ff)
  case violet
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ffffff"></span>
  /// Alpha: 100% <br/> (0xffffffff)
  case white

  var rgbaValue: UInt32 {
    switch self {
    case .ashGrey:
      return 0xb2b2b2ff
    case .black:
      return 0x000000ff
    case .blackBlue:
      return 0x102933ff
    case .blackerBlue:
      return 0x091f2aff
    case .darkJungle:
      return 0x0b222dff
    case .gray:
      return 0x504c49ff
    case .isabeline:
      return 0xebebebff
    case .lightBlue:
      return 0x188dfbff
    case .lightGray:
      return 0xefefefff
    case .lightGreen:
      return 0x78f6b2ff
    case .silver:
      return 0xbdbebdff
    case .tabbarGradientEnd:
      return 0x102a34ff
    case .tabbarGradientStart:
      return 0x061c27ff
    case .veryLightGray:
      return 0xcdd1d3ff
    case .violet:
      return 0x623588ff
    case .white:
      return 0xffffffff
    }
  }

  var color: Color {
    return Color(named: self)
  }
}
// swiftlint:enable type_body_length

extension Color {
  convenience init(named name: ColorName) {
    self.init(rgbaValue: name.rgbaValue)
  }
}
// swiftlint:enable file_length
// swiftlint:enable line_length

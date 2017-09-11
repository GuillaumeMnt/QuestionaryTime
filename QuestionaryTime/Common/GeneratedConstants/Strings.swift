// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable file_length
// swiftlint:disable line_length

// swiftlint:disable type_body_length
enum L10n {
  /// close
  case commonClose
  /// play
  case qtGameViewControllerPlayButton
  /// rank
  case qtGameViewControllerRankButton
  /// questionary time
  case qtGameViewControllerTitleLabel
  /// previous
  case qtQuestionaryTimeViewControllerQuestionButton
}
// swiftlint:enable type_body_length

extension L10n: CustomStringConvertible {
  var description: String { return self.string }

  var string: String {
    switch self {
      case .commonClose:
        return L10n.tr(key: "common.close")
      case .qtGameViewControllerPlayButton:
        return L10n.tr(key: "QTGameViewController.playButton")
      case .qtGameViewControllerRankButton:
        return L10n.tr(key: "QTGameViewController.rankButton")
      case .qtGameViewControllerTitleLabel:
        return L10n.tr(key: "QTGameViewController.titleLabel")
      case .qtQuestionaryTimeViewControllerQuestionButton:
        return L10n.tr(key: "QTQuestionaryTimeViewController.questionButton")
    }
  }

  private static func tr(key: String, _ args: CVarArg...) -> String {
    let format = NSLocalizedString(key, bundle: Bundle(for: BundleToken.self), comment: "")
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

func tr(_ key: L10n) -> String {
  return key.string
}

private final class BundleToken {}

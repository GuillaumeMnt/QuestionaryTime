// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

import Foundation
import UIKit

// swiftlint:disable file_length
// swiftlint:disable line_length
// swiftlint:disable type_body_length

protocol StoryboardSceneType {
  static var storyboardName: String { get }
}

extension StoryboardSceneType {
  static func storyboard() -> UIStoryboard {
    return UIStoryboard(name: self.storyboardName, bundle: Bundle(for: BundleToken.self))
  }

  static func initialViewController() -> UIViewController {
    guard let vc = storyboard().instantiateInitialViewController() else {
      fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
    }
    return vc
  }
}

extension StoryboardSceneType where Self: RawRepresentable, Self.RawValue == String {
  func viewController() -> UIViewController {
    return Self.storyboard().instantiateViewController(withIdentifier: self.rawValue)
  }
  static func viewController(identifier: Self) -> UIViewController {
    return identifier.viewController()
  }
}

protocol StoryboardSegueType: RawRepresentable { }

extension UIViewController {
  func perform<S: StoryboardSegueType>(segue: S, sender: Any? = nil) where S.RawValue == String {
    performSegue(withIdentifier: segue.rawValue, sender: sender)
  }
}

enum StoryboardScene {
  enum Game: String, StoryboardSceneType {
    static let storyboardName = "Game"

    static func initialViewController() -> UINavigationController {
      guard let vc = storyboard().instantiateInitialViewController() as? UINavigationController else {
        fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
      }
      return vc
    }

    case qtGameViewControllerScene = "QTGameViewController"
    static func instantiateQtGameViewController() -> QuestionaryTime.QTGameViewController {
      guard let vc = StoryboardScene.Game.qtGameViewControllerScene.viewController() as? QuestionaryTime.QTGameViewController
      else {
        fatalError("ViewController 'QTGameViewController' is not of the expected class QuestionaryTime.QTGameViewController.")
      }
      return vc
    }

    case qtQuestionaryTableViewCellScene = "QTQuestionaryTableViewCell"
    static func instantiateQtQuestionaryTableViewCell() -> QuestionaryTime.QTQuestionaryViewController {
      guard let vc = StoryboardScene.Game.qtQuestionaryTableViewCellScene.viewController() as? QuestionaryTime.QTQuestionaryViewController
      else {
        fatalError("ViewController 'QTQuestionaryTableViewCell' is not of the expected class QuestionaryTime.QTQuestionaryViewController.")
      }
      return vc
    }

    case qtRankViewControllerScene = "QTRankViewController"
    static func instantiateQtRankViewController() -> QuestionaryTime.QTRankViewController {
      guard let vc = StoryboardScene.Game.qtRankViewControllerScene.viewController() as? QuestionaryTime.QTRankViewController
      else {
        fatalError("ViewController 'QTRankViewController' is not of the expected class QuestionaryTime.QTRankViewController.")
      }
      return vc
    }

    case qtResultViewControllerScene = "QTResultViewController"
    static func instantiateQtResultViewController() -> QuestionaryTime.QTResultViewController {
      guard let vc = StoryboardScene.Game.qtResultViewControllerScene.viewController() as? QuestionaryTime.QTResultViewController
      else {
        fatalError("ViewController 'QTResultViewController' is not of the expected class QuestionaryTime.QTResultViewController.")
      }
      return vc
    }
  }
  enum LaunchScreen: StoryboardSceneType {
    static let storyboardName = "LaunchScreen"
  }
}

enum StoryboardSegue {
  enum Game: String, StoryboardSegueType {
    case goToGame
    case goToResult
  }
}

private final class BundleToken {}

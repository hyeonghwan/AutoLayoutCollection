//
//  Extension.swift
//  SplashOnboarding
//
//  Created by 박형환 on 2022/09/19.
//

import Foundation
import UIKit



protocol Identifiable {
     static var identifier: String { get }
}
extension Identifiable{
    static var identifier: String {
        return String(describing: Self.self)
    }
}

extension UICollectionViewCell: Identifiable {}
extension UICollectionReusableView : Identifiable {}


extension UILabel{

  func textWithAnimation(text:String,duration:CFTimeInterval){
    fadeTransition(duration)
    self.text = text
  }

  //followed from @Chris and @winnie-ru
  func fadeTransition(_ duration:CFTimeInterval) {
    let animation = CATransition()
    animation.timingFunction = CAMediaTimingFunction(name:
        CAMediaTimingFunctionName.easeInEaseOut)
      animation.type = CATransitionType.fade
    animation.duration = duration
    layer.add(animation, forKey: CATransitionType.fade.rawValue)
  }

}

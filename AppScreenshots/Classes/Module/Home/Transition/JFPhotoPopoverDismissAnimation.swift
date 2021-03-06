//
//  JFPhotoPopoverDismissAnimation.swift
//  popoverDemo
//
//  Created by jianfeng on 15/11/9.
//  Copyright © 2015年 六阿哥. All rights reserved.
//

import UIKit

class JFPhotoPopoverDismissAnimation: NSObject, UIViewControllerAnimatedTransitioning {
    
    // 动画时间
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.25
    }
    
    // dismiss动画
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        NotificationCenter.default.post(name: Notification.Name(rawValue: AlbumListViewControllerWillDismiss), object: nil)
        
        let fromView = transitionContext.view(forKey: UITransitionContextViewKey.from)!
        UIView.animate(withDuration: transitionDuration(using: nil), animations: {
            fromView.alpha = 0.0
        }) { (_) in
            transitionContext.completeTransition(true)
        }
    }
}

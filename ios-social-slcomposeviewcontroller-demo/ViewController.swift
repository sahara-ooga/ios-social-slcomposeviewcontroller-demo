//
//  ViewController.swift
//  ios-social-slcomposeviewcontroller-demo
//
//  Created by Kentaro on 2017/02/17.
//  Copyright © 2017年 Kentao Taguchi. All rights reserved.
//

import UIKit
import Social

final class ViewController: UIViewController {
    
    // SLComposeViewControllerの設定
    private func configure(_ composeViewController: SLComposeViewController) {
            // デフォルトのテキスト（Facebookだと表示されない）
            composeViewController.setInitialText("デフォルトで表示されるテキスト")
            
            // 画像をセット（Facebookだと表示されない）
            composeViewController.add(#imageLiteral(resourceName: "stv"))
            
            // URLをセット（Twitterだと表示されない）
            composeViewController.add(URL(string: "http://www.st-ventures.jp/"))
            
            // 投稿後に呼ばれるハンドラ
            composeViewController.completionHandler = { (result:SLComposeViewControllerResult) -> Void in
                switch result {
                case .done:
                    print("result is done")
                case .cancelled:
                    print("result is cancelled")
                }
            }
    }
    
    // MARK: - Action
    
    // Twitter
    @IBAction private func didTapTwitter(_ sender: UIButton) {
        guard
            // Twitter利用可能かチェック
            SLComposeViewController.isAvailable(forServiceType: SLServiceTypeTwitter),
            // 利用するSNSのServiceTypeを指定して初期化（Twitter -> SLServiceTypeTwitter）
            let composeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter) else {
                print("Twitterが利用できません。")
                return
        }
        // 設定
        configure(composeViewController)
        // 表示
        present(composeViewController, animated: true, completion: nil)
    }
    
    // Facebook
    @IBAction private func didTapFacebook(_ sender: UIButton) {
        guard
            // Facebook利用可能かチェック
            SLComposeViewController.isAvailable(forServiceType: SLServiceTypeFacebook),
            // 利用するSNSのServiceTypeを指定して初期化（Facebook -> SLServiceTypeFacebook）
            let composeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)else {
                print("Facebookが利用できません。")
                return
        }
        // 設定
        configure(composeViewController)
        // 表示
        present(composeViewController, animated: true, completion: nil)
    }
    
}


# SLComposeViewController

![SLComposeViewController動作例](https://github.com/sahara-ooga/ios-social-slcomposeviewcontroller-demo/blob/image/IMG_2924.PNG?raw=true)

## 概要
`SLComposeViewController`はSNS投稿をするViewを提供するクラスです。

## 関連クラス
UIViewController

## 前提条件
iOS標準の「設定」アプリで利用するSNS（TwitterやFacebookなど）情報の登録をしていること。
　
## サンプルアプリの実装手順
1. Linked Frameworks and LibrariesからSocial.frameworkを読み込みます。
2. ViewControllerでSocial.frameworkをインポートします。(`import Social`)
3. storyboardからViewControllerに紐付けた`UIButton`のアクションを２つ（Twitter用とFacebook用）作成します
4. 各アクション内で`SLComposeViewController`の設定を行い、表示します

## イニシャライザ

|イニシャライザ|説明|サンプル|
|---|---|---|
|`init(forServiceType: String!)`| serviceTypeを指定して`SLComposeViewController`オブジェクトを生成する| `SLComposeViewController(forServiceType: SLServiceTypeTwitter)` |

## 主要プロパティ

|プロパティ名|説明|サンプル|
|---|---|---|
| `serviceType` | SNSの種類（Read Only） | `composeViewController.serviceType` |
| `completionHandler` | 投稿後に呼ばれるハンドラ| `composeViewController.completionHandler` |

## 主要メソッド

|メソッド名|説明|サンプル|
|---|---|---|
|`setInitialText(_:)` | デフォルト表示されるテキストを設定する| `composeViewController.setInitialText("text")` |
| `add(_ image: UIImage!)` | 投稿する画像を設定する| `composeViewController.add(#imageLiteral(resourceName: "stv"))` |
|`add(_ url: URL!)`| 投稿するURLを設定する| `composeViewController.add(URL(string: "http://www.st-ventures.jp/"))` |

## Constants

|定数名|説明|サンプル|
|---|---|---|
|`SLComposeViewControllerResult` |ユーザーの操作結果の列挙型 |// キャンセルした <br> `.cancelled` <br> // 投稿した <br> `.done`| 

## フレームワーク
Social.framework

## サポートOSバージョン
iOS6.0以上

## 参考
https://developer.apple.com/reference/social/slcomposeviewcontroller

## 開発環境
|category | Version|
|---|---|
| Swift | 3.0.2 |
| XCode | 8.2.1 |
| iOS | 10.0〜 |


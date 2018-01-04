//import UIKit
//
//class BaseViewController: UIViewController, VCInNavigation, Loadingable, ShowError {
//
//    // MARK: - IBOutlet
//
//    // MARK: - Varialbes
//
//    // MARK: - View Lifecycle
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        logD("\(String(describing: self))")
//        self.createBackButton()
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        logD("isHidden: \(String(describing: self.tabBarController?.tabBar.isHidden))")
//    }
//
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        self.delegateSwipeBack(of: self, to: self)
//        if let count = self.numberVCInNav, count > 1 {
//            self.enableSwipeBack(enable: true, for: self)
//        } else {
//            self.enableSwipeBack(enable: false, for: self)
//        }
//         logD("isHidden: \(String(describing: self.tabBarController?.tabBar.isHidden))")
//    }
//
//    func viewWillSwipeBack() {
//        logD("\(String(describing: self))")
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }
//
//    override var preferredStatusBarStyle: UIStatusBarStyle {
//        return .lightContent
//    }
//
//    deinit {
//        logD("\(String(describing: self))")
//    }
//
//    // MARK: - Setup View
//
//    // MARK: - Actions
//
//    // MARK: - Call Api
//
//    // MARK: - Functions
//
//}
//
//// MARK: - Navigation bar
//extension BaseViewController {
//
//    // MARK: - Create View
//    private func createBackButton() {
//
//        if (self.numberVCInNav ?? 0) > 1 {
//            // add back
//            self.addNavBackLeftButton()
//        } else {
//            self.navigationItem.leftBarButtonItem = nil
//            self.navigationItem.hidesBackButton = true
//        }
//    }
//
//    func setNavTitle(title: String?, subtitle: String?) {
//        self.setNavTitle(title: title)
//    }
//
//    func addNavCloseLeftButton(_ tintColor: UIColor? = nil) {
//        self.addNavLeftButtonWith(image: #imageLiteral(resourceName: "ic_close_gray"), target: self, action: #selector(BaseViewController.touchCloseLeftButtonAction(_ :)), tintColor: tintColor)
//    }
//
//    func addNavBackLeftButton(tintColor: UIColor? = nil) {
//        self.addNavLeftButtonWith(image: #imageLiteral(resourceName: "ic_back_gray"), target: self, action: #selector(BaseViewController.touchBackButtonAction(_ :)), tintColor: tintColor)
//    }
//
//    func addNavLeftButton(image: UIImage?, tintColor: UIColor? = nil) {
//        self.addNavLeftButtonWith(image: image, target: self, action: #selector(BaseViewController.touchLeftButtonAction(_ :)), tintColor: tintColor)
//    }
//
//    func addNavRightButton(image: UIImage?, tintColor: UIColor? = nil) {
//        self.addNavRightButtonWith(image: image, target: self, action: #selector(BaseViewController.touchRightButtonAction(_ :)), tintColor: tintColor)
//    }
//
//    // MARK: - Actions
//    @objc func touchBackButtonAction(_ sender: Any) {
//        _ = self.navigationController?.popViewController(animated: true)
//    }
//
//    @objc func touchCloseLeftButtonAction(_ sender: Any) {
//        self.dismiss(animated: true, completion: nil)
//    }
//
//    @objc func touchLeftButtonAction(_ sender: Any) {}
//
//    @objc func touchRightButtonAction(_ sender: Any) {}
//
//}
//
//// MARK: - Loading
//extension BaseViewController {
//
//    func showLoading() {
////        SVProgressHUD.setDefaultMaskType(.custom)
////        SVProgressHUD.setBackgroundColor(UIColor.clear)
////        SVProgressHUD.setBackgroundLayerColor(UIColor.clear)
////        SVProgressHUD.show()
//    }
//
//    func hideLoading() {
////        SVProgressHUD.dismiss()
//    }
//}

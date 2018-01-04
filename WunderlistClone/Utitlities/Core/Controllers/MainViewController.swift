//import UIKit
//
//enum TabBarType: Int {
//    case chat
//    case setting
//}
//
//class TTabBarItem: UITabBarItem {
//    var type: TabBarType?
//}
//
//class MainViewController: UITabBarController {
//
//    // MARK: - Varialbes
//
//    // MARK: - View Lifecycle
//    override func awakeFromNib() {
//        super.awakeFromNib()
//
//        // setup
//        self.setupStartTabbar()
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//    }
//
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//    // MARK: - Setup View
//    func hideTabbar(hide: Bool?, animated: Bool = false) {
//        self.tabBar.isHidden = hide ?? false
//    }
//
//    // MARK: - Actions
//
//    // MARK: - Call Api
//
//    // MARK: - Functions
//    func setupStartTabbar() {
//
//        // Infomation
//        let navigationStart = AppStartViewController.fromStoryboard(Storyboard.Main.name)
//        let tabBarItemStart = TTabBarItem(title: "Start", image: #imageLiteral(resourceName: "ic_tabbar_infor"), selectedImage: #imageLiteral(resourceName: "ic_tabbar_infor"))
//        navigationStart.tabBarItem = tabBarItemStart
//
//        // set list childs controller to tabbar
//        let controllers = [navigationStart]
//        viewControllers = controllers
//        hideTabbar(hide: true)
//    }
//
//    func setupMainTabbar() {
//
//        // Chat
//        let navigationChat = UIStoryboard(name: Storyboard.Chat.name, bundle: nil).instantiateInitialViewController()!
//        let tabBarItemChat = TTabBarItem(title: "Chat", image: #imageLiteral(resourceName: "ic_tabbar_chat"), selectedImage: #imageLiteral(resourceName: "ic_tabbar_chat"))
//        tabBarItemChat.type = .chat
//        navigationChat.tabBarItem = tabBarItemChat
//
//        // Setting
//        let navigationSetting = UIStoryboard(name: Storyboard.Setting.name, bundle: nil).instantiateInitialViewController()!
//        let tabBarItemSetting = TTabBarItem(title: "Setting", image: #imageLiteral(resourceName: "ic_tabbar_timeline"), selectedImage: #imageLiteral(resourceName: "ic_tabbar_timeline"))
//        tabBarItemSetting.type = .setting
//        navigationSetting.tabBarItem = tabBarItemSetting
//
//        // set list childs controller to tabbar
//        let controllers = [navigationChat, navigationSetting]
//        viewControllers = controllers
//        hideTabbar(hide: false)
//    }
//
//    func gotoChatTab(object: AnyObject?) {
//        self.selectedIndex = TabBarType.chat.rawValue
//    }
//}

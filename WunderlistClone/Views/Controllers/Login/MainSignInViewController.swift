//
//  SignInViewController.swift
//  WunderlistClone
//
//  Created by nguyen.phuc.khanh on 1/4/18.
//  Copyright © 2018 khanh.nguyen. All rights reserved.
//

import UIKit

class MainSignInViewController: UIViewController {
    @IBOutlet weak var customView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet var swipeRight: UISwipeGestureRecognizer!
    @IBOutlet var swipeLeft: UISwipeGestureRecognizer!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
//    @IBAction func onChange(_ sender: AnyObject) {
//        scrollView.contentOffset = CGPoint(x: CGFloat(pageControl.currentPage) * scrollView.frame.size.width, y: 0)
//    }
    var first = false
    var screenImages: [String] = [Storyboard.ImageName.screen1, Storyboard.ImageName.screen2, Storyboard.ImageName.screen3] 
    var image = UIImageView()
    let maxScreenImageIndex = 2
    var imageIndex: Int = 0
    var currentPage = 0
    var titles = [InputResult.TitleText.titleScreen1, InputResult.TitleText.titleScreen2, InputResult.TitleText.titleScreen3]
    var contentTitles = [InputResult.ContentText.contentText1, InputResult.ContentText.contentText2, InputResult.ContentText.contentText3]
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.delegate = self as? UINavigationControllerDelegate
        self.scrollView.frame = CGRect(x: 24, y: 0, width: self.customView.frame.width - 48, height: self.customView.frame.height - 67)
        let scrollViewWidth: CGFloat = self.scrollView.frame.width
        let scrollViewHeight: CGFloat = self.scrollView.frame.height
        self.scrollView.contentSize = CGSize(width: self.scrollView.frame.width * 3, height: self.scrollView.frame.height)
        //        scrollView.delegate = self as? UIScrollViewDelegate
        //self.pageControl.currentPage = 0
        pageControl.currentPage = currentPage
        pageControl.numberOfPages = screenImages.count
        Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(moveToNextPage), userInfo: nil, repeats: true)
    }
        @objc func moveToNextPage (){
            let pageWidth: CGFloat = self.scrollView.frame.width
            let maxWidth: CGFloat = pageWidth * 3
            let contentOffset: CGFloat = self.scrollView.contentOffset.x
            var slideToX = contentOffset + pageWidth
            if  contentOffset + pageWidth == maxWidth {
                slideToX = 0
            }
            self.scrollView.scrollRectToVisible(CGRect(x:slideToX, y: 0, width:pageWidth, height:self.scrollView.frame.height), animated: true)
        }
    //    override func viewDidLayoutSubviews() {
    //        if !first {
    //            first = true
    //            let pageSize = customView.frame.size
    //            scrollView.contentSize = CGSize(width: pageSize.width * CGFloat(screenImages.count), height: 0)
    //            scrollView.contentOffset = CGPoint(x: CGFloat(currentPage) * scrollView.frame.size.width, y: 0)
    //            for imageIndex in 0..<screenImages.count {
    //                imageView.image = UIImage(named: screenImages[imageIndex])
    //            }
    //        }
    //    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    // MARK: Buttons
    //    @IBAction func swipeRightAction(_ sender: UISwipeGestureRecognizer) {
    //        imageIndex -= 1
    //        if imageIndex < 0 {
    //            imageIndex = 0
    //        }
    //        imageView.image = UIImage(named: screenImages[imageIndex])
    //        titleLabel.text = titles[imageIndex]
    //        contentLabel.text = contentTitles[imageIndex]
    //    }
    //    @IBAction func swipeLeftAction(_ sender: UISwipeGestureRecognizer) {
    //        imageIndex += 1
    //        if imageIndex > screenImages.count {
    //            imageIndex = screenImages.count
    //        }
    //        imageView.image = UIImage(named: screenImages[imageIndex])
    //        titleLabel.text = titles[imageIndex]
    //        contentLabel.text = contentTitles[imageIndex]
    //    }
}
extension MainSignInViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        // Test the offset and calculate the current page after scrolling ends
        let pageWidth: CGFloat = scrollView.frame.width
        let currentPage: CGFloat = floor((scrollView.contentOffset.x - pageWidth/3)/pageWidth) + 1
        // Change the indicator
        self.pageControl.currentPage = Int(currentPage);
        // Change the text accordingly
        if Int(currentPage) == 0 {
            imageView.image = UIImage(named: Storyboard.ImageName.screen1)
        }else if Int(currentPage) == 1 {
            imageView.image = UIImage(named: Storyboard.ImageName.screen2)
        }else if Int(currentPage) == 2 {
            imageView.image = UIImage(named: Storyboard.ImageName.screen3)
            //        } else if Int(currentPage) < 0 {
            //            imageView.image = UIImage(named: Storyboard.ImageName.screen1)
            //        } else if Int(currentPage) > screenImages.count {
            //            imageView.image = UIImage(named: Storyboard.ImageName.screen3)
            //        }
        }
    }
}


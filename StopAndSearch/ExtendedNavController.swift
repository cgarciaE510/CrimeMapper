//
//  ExtendedNavController.swift
//  StopAndSearch
//
//  Created by edit on 14/02/2017.
//  Copyright © 2017 edit. All rights reserved.
//

import UIKit

class ExtendedNavController: UINavigationController {
  
  let topView = OverlayBar.instanceFromNib() as! OverlayBar
  //let topLabel = UILabel()
  //let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.light)
 //let blurEffectView = UIVisualEffectView()

    override func viewDidLoad() {
      super.viewDidLoad()
      
      topView.dateLabel.textColor = UIColor.init(complementaryFlatColorOf: .flatMintDark)
      setTopViewFrame()
    // blurEffectView.effect = blurEffect
    //  blurEffectView.frame = topView.bounds
    //  topView.addSubview(blurEffectView)
      // topView.addSubview(topLabel)
      self.view.addSubview(topView)

      
    }
  


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  func setExtendedBarColor(_ color: UIColor) {
    topView.bgview.backgroundColor = color
  }
  
  
  func setTopViewFrame() {
    let nbh  = self.navigationBar.frame.size.height
    let nby  = self.navigationBar.frame.origin.y
    topView.frame = CGRect ( x: 0 , y: nbh + nby, width: self.view.frame.size.width, height: 60)
  // topLabel.frame = CGRect(x: 0, y: 5, width: self.view.frame.size.width, height: 50)
  //  blurEffectView.frame = topView.bounds
  }
  
  override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
    setTopViewFrame()
  }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
 
}
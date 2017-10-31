//
//  ViewController2.swift
//  ExampleApp
//
//  Created by danielemargutti on 31/10/2017.
//  Copyright © 2017 Daniele Margutti. All rights reserved.
//

import Foundation
import UIKit

public class ViewController2: UIViewController {
	
	@IBOutlet public var button_reset: UIButton?

	@IBAction func tapButton(_ sender: UIButton) {
		let u = UIStoryboard(name: "Main", bundle: Bundle.main)
		let vc = u.instantiateViewController(withIdentifier: "ViewController")
		
		//let opt = UIWindow.TransitionOptions(direction: .fade, style: .linear)
		var opt = UIWindow.TransitionOptions(direction: .toLeft, style: .easeInOut)
		opt.background = UIWindow.TransitionOptions.Background.solidColor(UIColor.red)
		opt.duration = 5
		UIApplication.shared.keyWindow?.setRootViewController(vc, options: opt)
	}
	
	public override func viewDidLoad() {
		super.viewDidLoad()
		button_reset!.tint()
		self.navigationItem.title = "Navigation Bar"
	}
}

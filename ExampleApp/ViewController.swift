//
//  ViewController.swift
//  ExampleApp
//
//  Created by danielemargutti on 31/10/2017.
//  Copyright © 2017 Daniele Margutti. All rights reserved.
//

import UIKit
import UIWindowTransitions

class ViewController: UIViewController {
	
	@IBOutlet public var button_top: UIButton?
	@IBOutlet public var button_bottom: UIButton?
	@IBOutlet public var button_left: UIButton?
	@IBOutlet public var button_right: UIButton?

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		[button_top,button_bottom,button_left,button_right].forEach {
			$0?.tint()
		}
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


	@IBAction func tapButton(_ sender: UIButton) {
		let wnd = UIApplication.shared.keyWindow

		let u = UIStoryboard(name: "Main", bundle: Bundle.main)
		let vc = u.instantiateViewController(withIdentifier: "Navigation") as! UINavigationController
		
		let options = UIWindow.TransitionOptions()
		switch sender.tag {
		case 0:
			options.direction = .toRight
		case 1:
			options.direction = .toLeft
		case 2:
			options.direction = .toTop
		case 3:
			options.direction = .toBottom
		default:
			break
		}
        wnd?.set(rootViewController: vc, options: options, nil)
	}
	
}

public extension UIButton {
	
    func tint() {
		self.layer.borderColor = UIColor.white.cgColor
		self.layer.borderWidth = 1.0
		self.layer.cornerRadius = 4
	}
	
}

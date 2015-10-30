//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit

class ViewController : UIViewController
{
	var coronaController : CoronaViewController!

	override func viewDidLoad()
	{
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.

		self.coronaController = CoronaViewController()
		self.addChildViewController(self.coronaController)

		let parent : UIView = self.view
		let coronaView = self.coronaController.view as! CoronaView
		
		// Resize and center CoronaView
		var rect = parent.frame
		rect.size.width *= 0.5
		rect.size.height *= 0.5
		coronaView.frame = rect // Half the size of the parent
		coronaView.center = parent.center // Position at center

		parent.addSubview(coronaView)

		coronaView.run()
	}

	override func didReceiveMemoryWarning()
	{
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}


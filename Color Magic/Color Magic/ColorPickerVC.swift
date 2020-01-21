// This script is related to the colorful screen that allows
// us to pick the color
import UIKit

class ColorPickerVC: UIViewController {
    // Instantiate a delegate equal to nil until any action is triggered
    var delegate: ColorTransferDelegate? = nil

    // Standard function (set by default)
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // If any colored button was selected, trigger the following action
    @IBAction func colorBtnWasPressed(sender: UIButton){
        // Invoke a userDidChoose function by following protocol to trigger action at ColorPresenterVC side
        delegate?.userDidChoose(color: sender.backgroundColor!, withName: sender.titleLabel!.text!)
        // Pop back to the previous view controller(main menu)
        self.navigationController?.popViewController(animated: true)
    }


    

}

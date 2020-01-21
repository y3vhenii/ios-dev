import UIKit

class ColorPresenterVC: UIViewController, ColorTransferDelegate {
    
    // Create a connection to the label object
    @IBOutlet weak var colorNameLbl: UILabel!
    // Default function (don't touch)
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // This function is triggered by ColorPickerVC in order to change ColorPresenterVC appearance
    func userDidChoose(color: UIColor, withName colorName: String) {
        // Set the background color
        view.backgroundColor = color
        // Change label text to the name of the newly picked color
        colorNameLbl.text = colorName
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "presentColorPickerVC" {
            guard let colorPickerVC = segue.destination as? ColorPickerVC else { return }
            colorPickerVC.delegate = self
        }
    }


}


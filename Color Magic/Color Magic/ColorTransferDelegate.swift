import UIKit

// Create a protocol that will guide transfer of color properties through different views
protocol ColorTransferDelegate {
    func userDidChoose(color: UIColor, withName colorName: String)
}

//
//  ViewController.swift
//  ColorReader
//
//  Created by Rodrigo Yukio Okido on 11/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorName: UILabel!
    @IBOutlet weak var previewColor: UIView!
    @IBOutlet weak var systemRedButton: UIButton!
    @IBOutlet weak var systemYellowButton: UIButton!
    @IBOutlet weak var systemOrangeButton: UIButton!
    @IBOutlet weak var systemGreenButton: UIButton!
    @IBOutlet weak var systemTealButton: UIButton!
    @IBOutlet weak var systemBlueButton: UIButton!
    @IBOutlet weak var systemIndigoButton: UIButton!
    @IBOutlet weak var systemPurpleButton: UIButton!
    @IBOutlet weak var systemPinkButton: UIButton!
    @IBOutlet weak var systemBrownButton: UIButton!
    @IBOutlet weak var systemMintButton: UIButton!
    @IBOutlet weak var systemCyanButton: UIButton!
    @IBOutlet weak var hexNumber: UITextField!
    @IBOutlet weak var redNumber: UITextField!
    @IBOutlet weak var greenNumber: UITextField!
    @IBOutlet weak var blueNumber: UITextField!
    
    var customRGB: [Int] = []
    
    /**
     Opens the color pallete to select a color.
     */
    @IBAction func changePreviewColor(_ sender: Any) {
        
        // Initializing Color Picker
        let picker = UIColorPickerViewController()

        // Setting the Initial Color of the Picker
        picker.selectedColor = self.view.backgroundColor!
  
        // Setting Delegate
        picker.delegate = self
        
        // Presenting the Color Picker
        self.present(picker, animated: true, completion: nil)
    }
    
    /**
     Displays the system color info on the screen.
     */
    @IBAction func systemColorInfo(_ sender: UIButton) {
        
        colorName.fadeTransition(0.5)
        hexNumber.fadeTransition(0.5)
        redNumber.fadeTransition(0.5)
        greenNumber.fadeTransition(0.5)
        blueNumber.fadeTransition(0.5)
        
        switch sender.tag {
        case 1:
            colorName.text = "systemRed"
            hexNumber.text = "FF3B30"
            redNumber.text = "255"
            greenNumber.text = "59"
            blueNumber.text = "48"
            previewColor.backgroundColor = systemRedButton.backgroundColor
        case 2:
            colorName.text = "systemOrange"
            hexNumber.text = "FF9500"
            redNumber.text = "255"
            greenNumber.text = "149"
            blueNumber.text = "0"
            previewColor.backgroundColor = systemOrangeButton.backgroundColor
        case 3:
            colorName.text = "systemYellow"
            hexNumber.text = "FFCC00"
            redNumber.text = "255"
            greenNumber.text = "204"
            blueNumber.text = "0"
            previewColor.backgroundColor = systemYellowButton.backgroundColor
        case 4:
            colorName.text = "systemGreen"
            hexNumber.text = "34C759"
            redNumber.text = "52"
            greenNumber.text = "199"
            blueNumber.text = "89"
            previewColor.backgroundColor = systemGreenButton.backgroundColor
        case 5:
            colorName.text = "systemRed"
            hexNumber.text = "30B0C7"
            redNumber.text = "48"
            greenNumber.text = "176"
            blueNumber.text = "199"
            previewColor.backgroundColor = systemTealButton.backgroundColor
        case 6:
            colorName.text = "systemBlue"
            hexNumber.text = "007AFF"
            redNumber.text = "0"
            greenNumber.text = "122"
            blueNumber.text = "255"
            previewColor.backgroundColor = systemBlueButton.backgroundColor
        case 7:
            colorName.text = "systemIndigo"
            hexNumber.text = "5856D6"
            redNumber.text = "88"
            greenNumber.text = "86"
            blueNumber.text = "214"
            previewColor.backgroundColor = systemIndigoButton.backgroundColor
        case 8:
            colorName.text = "systemPurple"
            hexNumber.text = "AF52DE"
            redNumber.text = "175"
            greenNumber.text = "82"
            blueNumber.text = "222"
            previewColor.backgroundColor = systemPurpleButton.backgroundColor
        case 9:
            colorName.text = "systemPink"
            hexNumber.text = "FF2D55"
            redNumber.text = "255"
            greenNumber.text = "45"
            blueNumber.text = "85"
            previewColor.backgroundColor = systemPinkButton.backgroundColor
        case 10:
            colorName.text = "systemBrown"
            hexNumber.text = "A2845E"
            redNumber.text = "162"
            greenNumber.text = "132"
            blueNumber.text = "94"
            previewColor.backgroundColor = systemBrownButton.backgroundColor
        case 11:
            colorName.text = "systemMint"
            hexNumber.text = "00C7BE"
            redNumber.text = "0"
            greenNumber.text = "199"
            blueNumber.text = "190"
            previewColor.backgroundColor = systemMintButton.backgroundColor
        case 12:
            colorName.text = "systemCyan"
            hexNumber.text = "32ADE6"
            redNumber.text = "50"
            greenNumber.text = "173"
            blueNumber.text = "230"
            previewColor.backgroundColor = systemCyanButton.backgroundColor
        default:
            hexNumber.text = ""
            redNumber.text = ""
            greenNumber.text = ""
            blueNumber.text = ""
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load all elements
        previewColor.layer.cornerRadius = 20
        
        systemRedButton.tag = 1
        systemRedButton.backgroundColor = UIColor.systemRed
        systemRedButton.layer.cornerRadius = 10
        
        systemOrangeButton.tag = 2
        systemOrangeButton.backgroundColor = UIColor.systemOrange
        systemOrangeButton.layer.cornerRadius = 10

        systemYellowButton.tag = 3
        systemYellowButton.backgroundColor = UIColor.systemYellow
        systemYellowButton.layer.cornerRadius = 10

        systemGreenButton.tag = 4
        systemGreenButton.backgroundColor = UIColor.systemGreen
        systemGreenButton.layer.cornerRadius = 10

        systemTealButton.tag = 5
        systemTealButton.backgroundColor = UIColor.systemTeal
        systemTealButton.layer.cornerRadius = 10

        systemBlueButton.tag = 6
        systemBlueButton.backgroundColor = UIColor.systemBlue
        systemBlueButton.layer.cornerRadius = 10

        systemIndigoButton.tag = 7
        systemIndigoButton.backgroundColor = UIColor.systemIndigo
        systemIndigoButton.layer.cornerRadius = 10

        systemPurpleButton.tag = 8
        systemPurpleButton.backgroundColor = UIColor.systemPurple
        systemPurpleButton.layer.cornerRadius = 10

        systemPinkButton.tag = 9
        systemPinkButton.backgroundColor = UIColor.systemPink
        systemPinkButton.layer.cornerRadius = 10

        systemBrownButton.tag = 10
        systemBrownButton.backgroundColor = UIColor.systemBrown
        systemBrownButton.layer.cornerRadius = 10

        systemMintButton.tag = 11
        systemMintButton.backgroundColor = UIColor.systemMint
        systemMintButton.layer.cornerRadius = 10

        systemCyanButton.tag = 12
        systemCyanButton.backgroundColor = UIColor.systemCyan
        systemCyanButton.layer.cornerRadius = 10


    }
}

extension ViewController: UIColorPickerViewControllerDelegate {
    
    //  Called once you have finished picking the color.
    func colorPickerViewControllerDidFinish(_ viewController: UIColorPickerViewController) {
        self.colorName.fadeTransition(0.5)
        self.hexNumber.fadeTransition(0.5)
        self.redNumber.fadeTransition(0.5)
        self.greenNumber.fadeTransition(0.5)
        self.blueNumber.fadeTransition(0.5)
        
        
        self.colorName.text = "Custom Color"
        self.previewColor.backgroundColor = viewController.selectedColor
        self.hexNumber.text = viewController.selectedColor.colorHexCode()
        self.customRGB = viewController.selectedColor.returnsRGB()
        self.redNumber.text = "\(customRGB[0])"
        self.greenNumber.text = "\(customRGB[1])"
        self.blueNumber.text = "\(customRGB[2])"

    }
    
    //  Called on every color selection done in the picker.
    func colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController) {
        self.colorName.fadeTransition(0.5)
        self.hexNumber.fadeTransition(0.5)
        self.redNumber.fadeTransition(0.5)
        self.greenNumber.fadeTransition(0.5)
        self.blueNumber.fadeTransition(0.5)
        
        self.colorName.text = "Custom Color"
        self.previewColor.backgroundColor = viewController.selectedColor
        self.hexNumber.text = viewController.selectedColor.colorHexCode()
        self.customRGB = viewController.selectedColor.returnsRGB()
        self.redNumber.text = "\(customRGB[0])"
        self.greenNumber.text = "\(customRGB[1])"
        self.blueNumber.text = "\(customRGB[2])"
    }
    
}


extension UIView {
    
    /**
     Adds smooth animation to labels and texts. Receives the duration to determine how much time the animation will execute.
     */
    func fadeTransition(_ duration:CFTimeInterval) {
        let animation = CATransition()
        animation.timingFunction = CAMediaTimingFunction(name:
                                                            CAMediaTimingFunctionName.easeInEaseOut)
        animation.type = CATransitionType.fade
        animation.duration = duration
        layer.add(animation, forKey: CATransitionType.fade.rawValue)
    }
}

extension UIColor {
    
    /**
     Returns the hex code of the selected custom color (sRGB).
     */
    func colorHexCode() -> String {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0

        getRed(&r, green: &g, blue: &b, alpha: &a)
    
        let rgb:Int = (Int)(r*255)<<16 | (Int)(g*255)<<8 | (Int)(b*255)<<0

        return NSString(format:"#%06x", rgb) as String
    }
    
    /**
     Returns the sRGB numbers of the custom color selected. The values are returned inside array which each index represents
     red, green, blue and alpha respectevely.
     */
    func returnsRGB() -> [Int] {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0

        getRed(&r, green: &g, blue: &b, alpha: &a)
        return [Int(r*255),Int(g*255),Int(b*255),Int(a*255)]
    }

    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }

}


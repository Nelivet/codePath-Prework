//
//  ViewController.swift
//  IOS-101-PreWork
//
//  Created by Ivette Fernandez on 3/02/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    
    @IBOutlet weak var emojiView: UIImageView!
    

    
    
    
    var fontName = "Rockwell-Bold"
    var fontSize: CGFloat = 15.0
    var fontColor = UIColor.white
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
     
        let iconOne = UIImage(named: "IconUser")
        let iconTwo = UIImage(named: "IconLocation")
        let iconThree = UIImage(named: "IconHeart")
        
        let customFont = UIFont(name: fontName, size: fontSize)
                   labelOne.font = customFont
                   labelTwo.font = customFont
                   labelThree.font = customFont
      

         configureLabel(label: labelOne,text: "Ivette Fernandez",icon: iconOne)
         configureLabel(label: labelTwo,text: "Brigham Young University",icon:iconTwo)
         configureLabel(label: labelThree,text: "Software Development",icon:iconThree)
        
  
      
        
    }
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
       
        labelOne.textColor = fontColor
        labelTwo.textColor = fontColor
        labelThree.textColor = fontColor
      
       
        
        let randomColor = changeColor()
         view.backgroundColor = randomColor
        
        let imageNames = ["img1", "img2" , "img3"]
               
               
               guard let randomImageName = imageNames.randomElement() else { return }
           
        if let randomImage = UIImage(named: randomImageName) {
            emojiView.image = randomImage
        } else {
            print("Error loading image: \(randomImageName)")
        }
       
    
        
           }
        
      
    
   
    func changeColor() -> UIColor
    {
          let red = CGFloat.random(in: 0...1)
          let green = CGFloat.random(in: 0...1)
          let blue = CGFloat.random(in: 0...1)

          return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
      }
    
    func configureLabel(label: UILabel, text: String, icon: UIImage?) {
        let add = NSTextAttachment()
        add.image = icon
        
        let addString = NSAttributedString(attachment: add)
        
        let completeText = NSMutableAttributedString()
        completeText.append(addString)
        completeText.append(NSAttributedString(string: "  "  + " " + " " + text))
      
        label.attributedText = completeText
        
    }
    

    }

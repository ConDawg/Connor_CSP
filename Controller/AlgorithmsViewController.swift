//
//  AlgorithmsViewController.swift
//  Connor_CSP
//
//  Created by Johnson, Connor on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class AlgorithmsViewController: UIViewController
{
    // Mark : Data members
    @IBOutlet weak var firstLabel: UILabel!
    
    private func setupAlgorithm() -> Void
    {
        var algorithmSteps : [String] = []
        
        //TODO: Define algorithm and all steps
        let algorithm :String = "The ar the instructions to create a project in Java using Eclipse and Github \n"
        let stepOne :String = "First step, Open Eclipse and click ‘Create new’ →  ‘Java Project’ → Then name your project."
        let stepTwo :String = "Second step, Open GitHub, Click ‘New Repository’, and name the Repository the same name as your project."
        let stepThree :String = "Third step, Undo the initial commit then Click ‘Repository Settings’ → ‘Ignored Files’ → Type ‘bin/   *.class   .DS_Store’ in the text box"
        let stepFour :String = "Fourth step, (In Eclipse) Create a package, name it ‘controller’"
        let stepFive :String = "fifth step, In your new controller package, make two classes and name them ‘Controller’ and ‘Runner’  "
        let stepSix :String = "sixth step, In ‘Runner.Java’ be sure to type ‘public static void main (String [] args)’"
        let stepSeven :String = "Seventh step, In ‘Controller.Java’ type ‘public void start()’"
        
        
        //TODO: Finish adding all steps to the algorithm
        algorithmSteps = [stepOne, stepTwo, stepThree, stepFour, stepFive, stepSix, stepSeven]
        
        let attributesDictionary = [NSAttributedStringKey.font : firstLabel.font]
        let fullAttributedString = NSMutableAttributedString (string: algorithm, attributes: attributesDictionary)
        
        for step in algorithmSteps
        {
            let bullet :String = "🍉"
            let formattedStep :String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range: NSMakeRange(0,attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        
        firstLabel.attributedText = fullAttributedString
    }
    
    private func createParagraphStyle() -> NSParagraphStyle
    {
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
        
        return paragraphStyle
    }
    
    
    
    override func viewDidLoad()

    {
        super.viewDidLoad()
        setupAlgorithm()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

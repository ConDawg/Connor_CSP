//
//  Pupper.swift
//  Connor_CSP
//
//  Created by Johnson, Connor on 11/20/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
public class Pupper : petable
{
    public var petState: Bool
    
    private var pupperColor :UIColor
    
    public init()
    {
        self.pupperColor = UIColor()
        self.petState = false
    }
    
    public func pet() -> Void
    {
        print("pet")
        petState = true
    }
    
    public func isPet() -> Bool
    {
        if(petState)
        {
            print("Petted")
        }
        else
        {
             print("fluffy")
        }
        return petState 
    }
}

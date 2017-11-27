//
//  petable.swift
//  Connor_CSP
//
//  Created by Johnson, Connor on 11/20/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import Foundation
public protocol petable
{
    var petState : Bool {get set}
    func pet() -> Void
    func isPet() -> Bool 
}

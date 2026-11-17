//
//  TransitionsHandlerSupport.swift
//  TapAlertViewController
//
//  Copyright © 2019 Tap Payments. All rights reserved.
//

import Foundation
import UIKit
import class	UIKit.UIView.UIView

internal protocol TransitionsHandlerSupport {
	
	var backgroundView: UIView? { get }
	var contentView: UIView? { get }
}

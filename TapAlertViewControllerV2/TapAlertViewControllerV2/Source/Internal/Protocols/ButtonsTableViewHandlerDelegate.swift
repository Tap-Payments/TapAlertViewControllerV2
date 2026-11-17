//
//  ButtonsTableViewHandlerDelegate.swift
//  TapAlertViewController
//
//  Copyright © 2019 Tap Payments. All rights reserved.
//

import Foundation
import UIKit
import struct	CoreGraphics.CGGeometry.CGSize
import protocol	TapAdditionsKitV2.ClassProtocol

internal protocol ButtonsTableViewHandlerDelegate: ClassProtocol {
	
	func buttonsTableViewHandler(_ buttonsTableViewHandler: ButtonsTableViewHandler, tableViewContentSizeChangedTo size: CGSize)
}

//
//  Bundle+Additions.swift
//  TapAlertViewController
//
//  Copyright © 2019 Tap Payments. All rights reserved.
//

import Foundation
import TapAdditionsKitV2

internal extension Bundle {
	
	// MARK: - Internal -
	// MARK: Propeties
	
	static let tapAlertViewControllerResources: Bundle = {
		
		#if SWIFT_PACKAGE
		// Swift Package Manager puts the storyboard in the package's own resource bundle.
		return Bundle.module
		#else
		guard let result = Bundle(for: TapAlertViewController.self).tap_childBundle(named: Constants.tapAlertViewControllerResourcesBundleName) else {
			
			fatalError("There is no \(Constants.tapAlertViewControllerResourcesBundleName) bundle.")
		}
		
		return result
		#endif
	}()
	
	// MARK: - Private -
	
	private struct Constants {
		
		fileprivate static let tapAlertViewControllerResourcesBundleName = "TapAlertViewControllerResources"
		
		@available(*, unavailable) private init() {}
	}
}

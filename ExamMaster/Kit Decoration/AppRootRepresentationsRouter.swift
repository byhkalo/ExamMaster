//
//  RootRepresentationsRouter.swift
//  SessionSwift
//
//  Created by aleksey on 10.10.15.
//  Copyright © 2015 aleksey chernish. All rights reserved.
//

import UIKit
import Foundation
import ModelsTreeKit

class AppRootRepresentationsRouter: RootRepresentationsRouter {
    func representationFor(session session: Session) -> AnyObject {
        switch session {
        case is UserSession:
            return MainFlowNavigaionController(contentViewController: UIViewController(), leftMenuViewController: UIViewController(), rightMenuViewController: UIViewController())
        default:
            return LoginFlowNavigationController()
        }
    }
}

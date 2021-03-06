//
//  Errors.swift
//  ModelsTreeKit
//
//  Created by aleksey on 20.12.15.
//  Copyright © 2015 aleksey chernish. All rights reserved.
//

import Foundation
import ModelsTreeKit

enum ErrorDomains: String, ErrorDomain {
  case Application = "ApplicationErrors"
  case Network = "NetworkErrors"
}

enum NetworkErrors: Int, ErrorCode {
  case BadResponse = 100
  case BadToken = 101
}

enum ApplicationErrors: Int, ErrorCode {
  case OnlyLettersInputAllowed = 100
}
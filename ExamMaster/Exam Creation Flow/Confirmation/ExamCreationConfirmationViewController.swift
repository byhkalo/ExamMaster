//
//  ExamCreationConfirmationViewController.swift
//  ExamMaster
//
//  Created by aleksey on 28.02.16.
//  Copyright © 2016 aleksey chernish. All rights reserved.
//

import Foundation
import ModelsTreeKit

class ExamCreationConfirmationViewController: UIViewController, ModelApplicable {

  @IBOutlet
  private weak var subjectLabel: UILabel!
  
  @IBOutlet
  private weak var topicLabel: UILabel!
  
  @IBOutlet
  private weak var questionsCountLabel: UILabel!
  
  @IBOutlet
  private weak var timeLimitLabel: UILabel!
  
  weak var model: ExamCreationConfirmationModel! {
    didSet { title = model.title }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    model.printSessionTree(withOptions: [.Representation])
    subjectLabel.text = model.exam.subject
    topicLabel.text = model.exam.topic
    questionsCountLabel.text = "Questions: \(model.exam.questionsCount)"
    timeLimitLabel.text = "Time limit: \(Int(model.exam.timeLimit)) min"
  }
  
  @IBAction
  private func finish(sender: AnyObject?) {
    model.finish()
  }
  
}
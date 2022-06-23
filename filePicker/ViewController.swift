//
//  ViewController.swift
//  filePicker
//
//  Created by Tunay Toksöz on 21.06.2022.
//

import UIKit
import MobileCoreServices
import UniformTypeIdentifiers

class ViewController: UIViewController, UIDocumentPickerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var filePickerButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func filePickerButton(_ sender: Any) {
        
        let documentPicker = UIDocumentPickerViewController(forOpeningContentTypes: [.usdz])
           documentPicker.delegate = self
           present(documentPicker, animated: true, completion: nil)
        
        
    }


       func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentAt url: URL) {

                 let cico = url as URL
                 print(cico)
                 print(url)

                 print(url.lastPathComponent)

                 print(url.pathExtension)

                }
    
}


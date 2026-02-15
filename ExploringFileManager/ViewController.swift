//
//  ViewController.swift
//  ExploringFileManager
//
//  Created by Shashank Gautam on 14/02/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // shared instance of file manager
        let manager = FileManager.default
        
        // url of the document directory
        guard let url = manager.urls(for: .documentDirectory, in: .userDomainMask).first else {
            return
        }
        
        
        print(url.path)
        
        let createFolder = url.appendingPathComponent("shashank")
        let filePath = createFolder.appending(path: "file1.txt")
        let string = "hello world".data(using: .utf8)
        manager.createFile(atPath: filePath.path, contents: string, attributes: [:])
        
        
    }
    


}


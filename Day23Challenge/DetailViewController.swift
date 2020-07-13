//
//  DetailViewController.swift
//  Day23Challenge
//
//  Created by Sasha Evtushenko on 7/13/20.
//  Copyright © 2020 Sasha Evtushenko. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var selectedImage: String?
    
    @IBOutlet var flagImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = selectedImage
        navigationItem.largeTitleDisplayMode = .never
        view.backgroundColor = UIColor.darkGray
        
        showImage(with: selectedImage)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareButtonTapped))
    }
    
    func showImage(with imageName: String?) {
        guard let imageName = imageName else { return }
        flagImageView.image = UIImage(named: imageName)
    }

    @objc func shareButtonTapped() {
        guard let imageToShare = flagImageView.image?.jpegData(compressionQuality: 0.8) else { return }
        let activityViewController = UIActivityViewController(activityItems: [imageToShare], applicationActivities: [])
        activityViewController.popoverPresentationController?.barButtonItem = navigationController?.navigationItem.rightBarButtonItem
        present(activityViewController, animated: true)
    }
}

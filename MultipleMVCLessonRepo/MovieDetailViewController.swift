//
//  MovieDetailViewController.swift
//  MultipleMVCLessonRepo
//
//  Created by Levi Davis on 8/13/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {

    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionTextField: UITextView!
    @IBOutlet weak var descriptionView: UIImageView!
    
    var movie: Movie!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
        // Do any additional setup after loading the view.
    }
    
    private func setUpViews() {
        titleLabel.text = movie.name
        genreLabel.text = movie.genre
        descriptionTextField.text = movie.description
        descriptionView.image = movie.getImage()
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let segueIdentifier = segue.identifier else {fatalError("no id in segue")}
//    } switch segueIdentifier {
//    case "detailSegue":
//    guard let 
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

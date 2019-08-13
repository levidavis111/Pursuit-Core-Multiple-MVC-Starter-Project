//
//  Imagable.swift
//  MultipleMVCLessonRepo
//
//  Created by Levi Davis on 8/13/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import Foundation
import UIKit

protocol Imageable {
    var imageName: String {get}
    func getImage() -> UIImage
}

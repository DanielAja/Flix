//
//  MovieDetailsViewController.swift
//  Flix
//
//  Created by Daniel Ajagbusi on 10/19/19.
//  Copyright © 2019 Daniel Ajagbusi. All rights reserved.
//

import UIKit
import AlamofireImage
class MovieDetailsViewController: UIViewController {
    
    var movie: [String:Any]!
    @IBOutlet weak var navbar: UINavigationItem!
    @IBOutlet weak var wideImage: UIImageView!
    @IBOutlet weak var movieDiscripction: UILabel!
    @IBOutlet weak var moviePoster: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navbar.title = movie["title"] as? String
        movieDiscripction.text = movie["overview"] as? String
        movieDiscripction.sizeToFit()
        
        // Set movie poster image
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"]as! String
        let posterUrl = URL(string: baseURL + posterPath)
        self.moviePoster.af_setImage(withURL: posterUrl!)
        
        // Set backdrop image
        let backdropPath = movie["backdrop_path"]as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        self.wideImage.af_setImage(withURL: backdropUrl!)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

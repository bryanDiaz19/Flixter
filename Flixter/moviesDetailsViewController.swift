//
//  moviesDetailsViewController.swift
//  Flixter
//
//  Created by Bryan Diaz  on 9/21/21.
//

import UIKit
import AlamofireImage
class moviesDetailsViewController: UIViewController {

    @IBOutlet weak var backdropView: UIImageView!
    var movies: [String:Any]!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var sypnosisLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        titleLabel.text = movies["title"] as? String
        titleLabel.sizeToFit()
        
        sypnosisLabel.text = movies["overview"] as? String
        sypnosisLabel.sizeToFit()
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movies["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        posterView.af_setImage(withURL: posterUrl!)
        
        let backdropPath = movies["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
        backdropView.af_setImage(withURL: backdropUrl! )
        // Do any additional setup after loading the view.
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

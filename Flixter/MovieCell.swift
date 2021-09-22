//
//  MovieCell.swift
//  Flixter
//
//  Created by Bryan Diaz  on 9/12/21.
//

import UIKit

class MovieCell: UITableViewCell {

        
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var sypnosis: UILabel!
    
    
    @IBOutlet weak var poster: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  MovieViewCell.swift
//  Flix
//
//  Created by Daniel Ajagbusi on 10/17/19.
//  Copyright © 2019 Daniel Ajagbusi. All rights reserved.
//

import UIKit

class MovieViewCell: UITableViewCell {

    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieDisc: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

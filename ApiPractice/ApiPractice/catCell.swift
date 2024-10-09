//
//  catCell.swift
//  ApiPractice
//
//  Created by admin on 08/10/24.
//

import UIKit

class catCell: UITableViewCell {

    @IBOutlet weak var imagelabel: UILabel!
    @IBOutlet weak var descriptionlabel: UILabel!
    @IBOutlet weak var colorslabel: UILabel!
    @IBOutlet weak var temperamentlabel: UILabel!
    @IBOutlet weak var originlabel: UILabel!
    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var idlabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

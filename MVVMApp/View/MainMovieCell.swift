//
//  MainMovieCell.swift
//  MVVMApp
//
//  Created by Kushagra Mishra on 11/06/24.
//

import UIKit
import SDWebImage

class MainMovieCell: UITableViewCell {
    
    static var identifier: String {
        get {
            "MainMovieCell"
        }
    }
    
    static func register() -> UINib {
        UINib(nibName: "MainMovieCell", bundle: nil)
    }
        
    
    @IBOutlet weak var rateLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var backView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        backView.addBorder(color: .label, width: 1)
        backView.round()
        
        movieImageView.round(5)
    }
    
    func setupCell(viewModel: MovieTableCellViewModel) {
            self.nameLabel.text = viewModel.title
            self.dateLabel.text = viewModel.date
            self.rateLabel.text = viewModel.rating
            self.movieImageView.sd_setImage(with: viewModel.imageUrl)
        }
    
}

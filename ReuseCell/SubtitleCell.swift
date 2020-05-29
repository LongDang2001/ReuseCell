//
//  SubtitleCell.swift
//  ReuseCell
//
//  Created by admin on 2/10/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit

class SubtitleCell: UITableViewCell {

    @IBOutlet weak var labelCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // hàm dưới dùng đê reload lại data trước khi tableview tái sử dụng lại cell, làm cho cell đó cập nhật và chạy tốt hơn
    
    override func prepareForReuse() {
        super.prepareForReuse()
        labelCell.text = nil
        textLabel?.text = nil
        detailTextLabel?.text = ""
        
    }
    
//    override func prepareForReuse() {
//        mainImageView.af_cancelImageRequest()
//        mainImageView.image = nil
//    }

}

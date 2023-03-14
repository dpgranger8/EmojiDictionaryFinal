//
//  EmojiTableViewCell.swift
//  emojiDictionary2
//
//  Created by David Granger on 3/9/23.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var symbolLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    private func updateView() {
        guard let emoji else {return}
        
        symbolLabel.text = emoji.symbol
        nameLabel.text = emoji.name
        descriptionLabel.text = emoji.description
    }
    
    var emoji: Emoji? {
        didSet {
            updateView()
        }
    }
    
}

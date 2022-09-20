//
//  CollectionViewCell.swift
//  SplashOnboarding
//
//  Created by 박형환 on 2022/09/18.
//

import Foundation
import UIKit
import SnapKit

class CollectionViewCell: UICollectionViewCell{
    
    let firstContent: String = "Managing your\ncoding has never been so easy."
    let secondContent: String = "Spend smarter every day. all from one app."
    
    private lazy var titleContent: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textColor = UIColor(red: 0.07, green: 0.202, blue: 0.542, alpha: 1)
        label.font = UIFont(name: "NanumGothicExtraBold", size: 34)
        label.lineBreakMode = .byWordWrapping
        var pargraphStyle = NSMutableParagraphStyle()
        pargraphStyle.lineHeightMultiple = 1.05
        label.attributedText = NSMutableAttributedString(string: firstContent, attributes: [NSAttributedString.Key.kern : 0.2, NSAttributedString.Key.paragraphStyle : pargraphStyle])
        return label
    }()
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentView.backgroundColor = .white
        self.contentView.addSubview(imageView)
        imageView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
    }
    
    func updataUI(_ image: UIImage) {
        imageView.image = image
    }

    
    required init?(coder: NSCoder) {
        fatalError("required init fattal error")
    }
    
}

//
//  TweetInfoCollectionViewCell.swift
//  Collor
//
//  Created by Guihal Gwenn on 05/09/2017.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import Collor

final class TweetInfoCollectionViewCell: UICollectionViewCell, CollectionCellAdaptable {
   
    @IBOutlet weak var keyLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
        
    func update(with adapter: CollectionAdapter) {
        guard let adapter = adapter as? TweetInfoAdapterProtocol else {
            fatalError("TweetInfoAdapterProtocol required")
        }
        
        keyLabel.attributedText = adapter.key
        valueLabel.attributedText = adapter.value
    }

}

final class TweetInfoDescriptor: CollectionCellDescribable {
    
    let identifier: String = "TweetInfoCollectionViewCell"
    let className: String = "TweetInfoCollectionViewCell"
    var selectable:Bool = false    
    var adapter: CollectionAdapter
    var layoutFitting: LayoutFitting?
    
    init(adapter:TweetInfoAdapterProtocol) {
        self.adapter = adapter
    }
    
    func size(_ collectionViewBounds:CGRect, sectionDescriptor: CollectionSectionDescribable) -> CGSize {
        let sectionInset = sectionDescriptor.sectionInset(collectionViewBounds)
        let width:CGFloat = collectionViewBounds.width - sectionInset.left - sectionInset.right
        return CGSize(width:width, height:44)
    }
}

protocol TweetInfoAdapterProtocol : CollectionAdapter {
    var key:NSAttributedString { get }
    var value:NSAttributedString { get }
}

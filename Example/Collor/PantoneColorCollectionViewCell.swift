//
//  PantoneColorCollectionViewCell.swift
//  Collor
//
//  Created by Guihal Gwenn on 08/08/2017.
//  Copyright (c) 2017-present, Voyages-sncf.com. All rights reserved.. All rights reserved.
//

import UIKit
import Collor

final class PantoneColorCollectionViewCell: UICollectionViewCell, CollectionCellAdaptable {
    var descriptor: CollectionCellDescribable?    
    func update(with adapter: CollectionAdapter) {
        guard let adapter = adapter as? PantoneColorAdapter else {
            fatalError("PantoneColorAdapter required")
        }
        
        backgroundColor = adapter.color
    }

}

final class PantoneColorDescriptor: CollectionCellDescribable {
    
    let identifier: String = "PantoneColorCollectionViewCell"
    let className: String = "PantoneColorCollectionViewCell"
    var selectable:Bool = true
    var adapter: CollectionAdapter    
    
    init(adapter:PantoneColorAdapter) {
        self.adapter = adapter
    }
    
    func size(_ collectionViewBounds:CGRect, sectionDescriptor: CollectionSectionDescribable) -> CGSize {
        let margin = PantoneSectionDescriptor.margin * 4
        let side:CGFloat = (bounds.width - margin) / 3
        return CGSize(width: side, height: side)
    }
}

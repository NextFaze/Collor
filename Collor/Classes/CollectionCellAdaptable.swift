//
//  CollectionCellAdaptable.swift
//  Collor
//
//  Created by Guihal Gwenn on 16/03/17.
//  Copyright (c) 2017-present, Voyages-sncf.com. All rights reserved.
//

import Foundation

public protocol CollectionCellAdaptable : NSObjectProtocol {
    func update(with adapter: CollectionAdapter) -> Void
    func set(delegate:CollectionUserEventDelegate?) -> Void
}

public protocol CollectionUserEventDelegatable {
    associatedtype Delegate: CollectionUserEventDelegate
    var delegate: Delegate { get }
}

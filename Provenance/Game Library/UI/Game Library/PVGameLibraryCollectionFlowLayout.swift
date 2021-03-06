//
//  PVGameLibraryCollectionFlowLayout.swift
//  Provenance
//
//  Created by Joseph Mattiello on 11/13/18.
//  Copyright © 2018 Provenance Emu. All rights reserved.
//

import Foundation

final class PVGameLibraryCollectionFlowLayout: UICollectionViewFlowLayout {
    override init() {
        super.init()
        #if os(iOS)
        if #available(iOS 9.0, *) {
            self.sectionHeadersPinToVisibleBounds = true
        }
        #elseif os(tvOS)
        self.sectionHeadersPinToVisibleBounds = true
        #endif
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

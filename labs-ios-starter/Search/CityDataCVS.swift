//
//  CityDataCVS.swift
//  labs-ios-starter
//
//  Created by Sal562 on 4/12/21.
//  Copyright © 2021 Spencer Curtis. All rights reserved.
//

import UIKit

class CityDataCVS : BaseCVListController {
    
    let cityDataCellId = "CityDataCellId"
    let headerCellId = "HeaderCell"
    
    //create cityDataObject to holdData
    let cityData = [CityData]()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        
        //Register CityDataCell
        collectionView.register(CityDataCellS.self, forCellWithReuseIdentifier: cityDataCellId)
        
        //Register headerCell
        collectionView.register(CityDataHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerCellId)

    }
    
    //MARK: - Required Methods CollectionView
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cityDataCellId, for: indexPath) as! CityDataCellS
        
        //presentCityData
        
        return cell
    }
    
    
    //MARK: - Required Methods for Header
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerCellId, for: indexPath) as! CityDataHeader
        header.imageView.image = #imageLiteral(resourceName: "sf1")
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return .init(width: view.frame.width, height: 200)
    }
    
    
}

extension CityDataCVS: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 250)
    }
}

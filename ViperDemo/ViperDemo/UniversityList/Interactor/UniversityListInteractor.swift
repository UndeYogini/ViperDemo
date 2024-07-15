//
//  UniversityListInteractor.swift
//  ViperDemo
//
//
//  Created by Yogini Unde on 15/07/24.
//

import UIKit

class UniversityListInteractor: UniversityListInputInteractorProtocol {
    
    weak var presenter: UniversityListOutputInteractorProtocol?
    
    func getUniversityList() {
        presenter?.universityListDidFetch(universityList: getAllUniversityDetail())
    }
    
    func getAllUniversityDetail() -> [University] {
        var universityList = [University]()
        let allUniDetail = Common.generateDataList()
        for item in allUniDetail {
            universityList.append(University(attributes: item))
        }
        return universityList
    }
}

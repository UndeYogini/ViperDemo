//
//  UniversityListPresenter.swift
//  ViperDemo
//
//  Created by Yogini Unde on 15/07/24.
//

import UIKit

class UniversityListPresenter: UniversityListPresenterProtocol {
    
    var wireframe: UniversitytListWireFrameProtocol?
    weak var view: UniversityListProtocols?
    var interactor: UniversityListInputInteractorProtocol?
    
    func showUniversitySelection(with university: University, from view: UIViewController) {
        wireframe?.pushToUniversityDetail(with: university, from: view)
    }
    
    func viewDidLoad() {
        self.loadUniversityList()
    }

    func loadUniversityList() {
        interactor?.getUniversityList()
    }
    
}

extension UniversityListPresenter: UniversityListOutputInteractorProtocol {
    
    func universityListDidFetch(universityList: [University]) {
        view?.showUniversities(with: universityList)
    }
    
}

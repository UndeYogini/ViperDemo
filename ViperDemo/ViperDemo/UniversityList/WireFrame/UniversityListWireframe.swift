//
//  UniversityListWireframe.swift
//  ViperDemo
//
//  Created by Yogini Unde on 15/07/24.
//

import UIKit

class UniversityListWireframe: UniversitytListWireFrameProtocol {
   
    func pushToUniversityDetail(with university: University,from view: UIViewController) {
        let universityDetailViewController = view.storyboard?.instantiateViewController(withIdentifier: "UniversityDetailView") as! UniversityDetailView
        UniversityDetailWireFrame.createUniversityDetailModule(with: universityDetailViewController, and: university)
        view.navigationController?.pushViewController(universityDetailViewController, animated: true)
    }
    
    class func createUniversityListModule(universityListRef: UniversityListView) {
       let presenter: UniversityListPresenterProtocol & UniversityListOutputInteractorProtocol = UniversityListPresenter()
        
        universityListRef.presenter = presenter
        universityListRef.presenter?.wireframe = UniversityListWireframe()
        universityListRef.presenter?.view = universityListRef
        universityListRef.presenter?.interactor = UniversityListInteractor()
        universityListRef.presenter?.interactor?.presenter = presenter
    }
    
}

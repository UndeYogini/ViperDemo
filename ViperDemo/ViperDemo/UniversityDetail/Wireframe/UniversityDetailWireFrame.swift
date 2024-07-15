//
//  UniversityDetailWireFrame.swift
//  ViperDemo
//
//  Created by Yogini Unde on 15/07/24.
//

import UIKit

class UniversityDetailWireFrame: UniversityDetailWireFrameProtocol {
    
    class func createUniversityDetailModule(with universityDetailRef: UniversityDetailView, and university: University) {
        let presenter = UniversityDetailPresenter()
        presenter.university = university
        universityDetailRef.presenter = presenter
        universityDetailRef.presenter?.view = universityDetailRef
        universityDetailRef.presenter?.wireframe = UniversityDetailWireFrame()
    }
    
    func goBackToUniversityListView(from view: UIViewController) {
        
    }
    
    deinit {
        print("UniversityDetailWireFrame removed")
    }

}

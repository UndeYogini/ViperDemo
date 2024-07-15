//
//  UniversityDetailProtocols.swift
//  ViperDemo
//
//  Created by Yogini Unde on 15/07/24.
//

import UIKit

protocol UniversityDetailPresenterProtocol: AnyObject {
    
    var wireframe: UniversityDetailWireFrameProtocol? {get set}
    var view: UniversityDetailViewProtocol? {get set}
    
    //View -> Presenter
    func viewDidLoad()
    func backButtonPressed(from view: UIViewController)
    
}

protocol UniversityDetailViewProtocol: AnyObject {
    //Presenter -> View
    func showUniversityDetail(with university: University)
}

protocol UniversityDetailWireFrameProtocol: AnyObject {
    func goBackToUniversityListView(from view: UIViewController)
}

//
//  UniversityListProtocols.swift
//  ViperDemo
//
//  Created by Yogini Unde on 15/07/24.
//

import UIKit


protocol UniversityListProtocols: AnyObject {
    // PRESENTER -> VIEW
    func showUniversities(with university: [University])
}

protocol UniversityListPresenterProtocol: AnyObject {
    //View -> Presenter
    var interactor: UniversityListInputInteractorProtocol? {get set}
    var view: UniversityListProtocols? {get set}
    var wireframe: UniversitytListWireFrameProtocol? {get set}

    func viewDidLoad()
    func showUniversitySelection(with university: University, from view: UIViewController)
}

protocol UniversityListInputInteractorProtocol: AnyObject {
    var presenter: UniversityListOutputInteractorProtocol? {get set}
    //Presenter -> Interactor
    func getUniversityList()
}

protocol UniversityListOutputInteractorProtocol: AnyObject {
    //Interactor -> Presenter
    func universityListDidFetch(universityList: [University])
}

protocol UniversitytListWireFrameProtocol: AnyObject {
    //Presenter -> Wireframe
    func pushToUniversityDetail(with university: University,from view: UIViewController)
    static func createUniversityListModule(universityListRef: UniversityListView)
}

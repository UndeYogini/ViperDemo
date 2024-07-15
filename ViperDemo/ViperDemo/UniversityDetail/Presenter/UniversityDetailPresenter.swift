//
//  UniversityDetailPresenter.swift
//  ViperDemo
//
//  Created by Yogini Unde on 15/07/24.
//
import UIKit

class UniversityDetailPresenter: UniversityDetailPresenterProtocol {
    
    weak var view: UniversityDetailViewProtocol?
    var wireframe: UniversityDetailWireFrameProtocol?
    var university: University?
    
    func viewDidLoad() {
        view?.showUniversityDetail(with: university!)
    }
    
    func backButtonPressed(from view: UIViewController) {
        
    }
    
    deinit {
        print("UniversityDetailPresenter removed")
    }
    
}

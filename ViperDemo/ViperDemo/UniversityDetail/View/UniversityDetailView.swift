//
//  UniversityDetailView.swift
//  ViperDemo
//
//
//  Created by Yogini Unde on 15/07/24.
//

import UIKit

class UniversityDetailView: UIViewController,UniversityDetailViewProtocol {

    
    @IBOutlet var universityName: UILabel!
    @IBOutlet var state: UILabel!
    @IBOutlet var country: UILabel!
    @IBOutlet var usiniversityWeb: UIButton!
    @IBOutlet var countrycode: UILabel!

    var web :String!
    
    var presenter: UniversityDetailPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func showUniversityDetail(with university: University) {
        title = university.name
      //  universityImage.image = UIImage(named: university.name)
        universityName.text = university.name
        state.text = university.state
        usiniversityWeb.setTitle("Web", for: .normal)
        web = university.web
        country.text = university.country + university.countrycode
        
    }
    
    @IBAction func redirectToWeb(_ sender: Any) {
        guard let url = URL(string: web!) else {
        return //be safe
        }
        UIApplication.shared.open(url)
    }
    
    deinit {
        print("UniversityDetailView removed")
    }

}

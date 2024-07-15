//
//  UniversityListView.swift
//  ViperDemo
//
//  Created by Yogini Unde on 15/07/24.
//

import UIKit

class UniversityListView: UIViewController,UniversityListProtocols {
    
    @IBOutlet var universityTblView: UITableView!
    
    @IBOutlet weak var universityName: UILabel!
    @IBOutlet weak var state: UILabel!
    var presenter:UniversityListPresenterProtocol?
    var universityList = [University]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UniversityListWireframe.createUniversityListModule(universityListRef: self)
        presenter?.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func showUniversities(with university: [University]) {
        universityList = university
        universityTblView.reloadData()
    }

}

extension UniversityListView: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = universityTblView.dequeueReusableCell(withIdentifier: "uniCell", for: indexPath)
        let university = universityList[indexPath.row]
        cell.textLabel?.text = university.name
        cell.detailTextLabel?.text = university.state
        //cell.universityName.text = university.name
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return universityList.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.showUniversitySelection(with: universityList[indexPath.row], from: self)
    }
    
}






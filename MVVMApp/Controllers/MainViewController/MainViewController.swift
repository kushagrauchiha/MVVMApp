//
//  MainViewController.swift
//  MVVMApp
//
//  Created by Kushagra Mishra on 11/06/24.
//
import Foundation
import UIKit

class MainViewController: UIViewController {

    //IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    //ViewModel
    var viewModel: MainViewModel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        configView()
        
    }

    func configView() {
        self.title = "Main View"
        self.view.backgroundColor = .red
        self.setupTableView()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

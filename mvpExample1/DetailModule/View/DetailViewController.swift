//
//  DetailViewController.swift
//  mvpExample1
//
//  Created by Максим Япринцев on 24.08.2023.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var commentLabel: UILabel!
    
    var presenter: DetailViewPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.setComment()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTappedButton(_ sender: Any) {
        presenter.tap()
    }
    
}
extension DetailViewController: DetailViewProtocol {
    func setComment(comment: Comment?) {
        commentLabel.text = comment?.body
    }
    

}

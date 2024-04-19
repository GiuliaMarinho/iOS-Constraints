//
//  ViewController.swift
//  Constraints
//
//  Created by Giulia Marinho on 17/04/24.
//


// ********** EXEMPLO DE SAFE AREA ********** //

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewConstraints: UIView!
    @IBOutlet weak var viewConstraintsBottom: UIView!
    @IBOutlet weak var ViewConstranintsRight: UIView!
    @IBOutlet weak var viewConstraintsLeft: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewConstraints.backgroundColor = .blue
        viewConstraints.translatesAutoresizingMaskIntoConstraints = false
        viewConstraints.layer.cornerRadius = 50
        
        viewConstraintsBottom.backgroundColor = .brown
        viewConstraintsBottom.translatesAutoresizingMaskIntoConstraints = false
        
        ViewConstranintsRight.backgroundColor = .green
        ViewConstranintsRight.translatesAutoresizingMaskIntoConstraints = false
        
        viewConstraintsLeft.backgroundColor = .black
        viewConstraintsLeft.translatesAutoresizingMaskIntoConstraints = false
        
        setupConstraints()
    }
    
    func setupConstraints() {
        viewConstraints.widthAnchor.constraint(equalToConstant: 100).isActive = true
        viewConstraints.heightAnchor.constraint(equalToConstant: 100).isActive = true
        viewConstraints.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        viewConstraints.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        
        viewConstraintsBottom.widthAnchor.constraint(equalToConstant: 100).isActive = true
        viewConstraintsBottom.heightAnchor.constraint(equalToConstant: 100).isActive = true
        viewConstraintsBottom.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        viewConstraintsBottom.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        
        ViewConstranintsRight.widthAnchor.constraint(equalToConstant: 100).isActive = true
        ViewConstranintsRight.heightAnchor.constraint(equalToConstant: 100).isActive = true
        ViewConstranintsRight.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        ViewConstranintsRight.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        viewConstraintsLeft.widthAnchor.constraint(equalToConstant: 100).isActive = true
        viewConstraintsLeft.heightAnchor.constraint(equalToConstant: 100).isActive = true
        viewConstraintsLeft.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        viewConstraintsLeft.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
    }
}

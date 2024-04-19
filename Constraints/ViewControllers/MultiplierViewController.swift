//
//  MultiplierViewController.swift
//  Constraints
//
//  Created by Giulia Marinho on 17/04/24.
//

import UIKit

// ********** EXEMPLO DE MULTIPLIER ********** //

class MultiplierViewController: UIViewController {

    @IBOutlet weak var viewConstraints: UIView!
    @IBOutlet weak var viewConstraintsBottom: UIView!
    @IBOutlet weak var ViewConstranintsRight: UIView!
    @IBOutlet weak var viewConstraintsLeft: UIView!
    @IBOutlet weak var viewConstraintsFive: UIView!
    @IBOutlet weak var viewConstraintsSix: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        viewConstraints.backgroundColor = .blue
        viewConstraints.translatesAutoresizingMaskIntoConstraints = false

        viewConstraintsBottom.backgroundColor = .magenta
        viewConstraintsBottom.translatesAutoresizingMaskIntoConstraints = false

        ViewConstranintsRight.backgroundColor = .black
        ViewConstranintsRight.translatesAutoresizingMaskIntoConstraints = false

        viewConstraintsLeft.backgroundColor = .brown
        viewConstraintsLeft.translatesAutoresizingMaskIntoConstraints = false

        viewConstraintsFive.backgroundColor = .cyan
        viewConstraintsFive.translatesAutoresizingMaskIntoConstraints = false

        viewConstraintsSix.backgroundColor = .yellow
        viewConstraintsSix.translatesAutoresizingMaskIntoConstraints = false


        setupConstraints()
    }

    func setupConstraints() {
        viewConstraints.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        viewConstraints.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.17).isActive = true

        viewConstraintsBottom.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        viewConstraintsBottom.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.17).isActive = true
        viewConstraintsBottom.topAnchor.constraint(equalTo: viewConstraints.bottomAnchor).isActive = true

        ViewConstranintsRight.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        ViewConstranintsRight.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.17).isActive = true
        ViewConstranintsRight.topAnchor.constraint(equalTo: viewConstraintsBottom.bottomAnchor).isActive = true

        viewConstraintsLeft.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        viewConstraintsLeft.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.17).isActive = true
        viewConstraintsLeft.topAnchor.constraint(equalTo: ViewConstranintsRight.bottomAnchor).isActive = true

        viewConstraintsFive.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        viewConstraintsFive.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.17).isActive = true
        viewConstraintsFive.topAnchor.constraint(equalTo: viewConstraintsLeft.bottomAnchor).isActive = true

        viewConstraintsSix.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        viewConstraintsSix.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.17).isActive = true
        viewConstraintsSix.topAnchor.constraint(equalTo: viewConstraintsFive.bottomAnchor).isActive = true
    }
}

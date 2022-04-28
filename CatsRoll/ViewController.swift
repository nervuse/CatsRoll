//
//  ViewController.swift
//  CatsRoll
//
//  Created by elena on 26.04.2022.
//

import UIKit

class ViewController: UIViewController {

    private lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "жизнь")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        return image
    }()

    private lazy var imageCatView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "0")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()

    private lazy var playButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: "жми"), for: .normal)
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupView()
    }

    private func setupView() {
        self.view.addSubview(imageView)
        self.imageView.addSubview(imageCatView)
        self.view.addSubview(playButton)

        let topImageViewConstraint = self.imageView.topAnchor.constraint(equalTo: self.view.topAnchor)
        let leadingImageViewConstraint = self.imageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor)
        let trailingImageViewConstraint = self.imageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        let bottomImageViewConstraint = self.imageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)

        let centerXImageCatConstraint = self.imageCatView.centerXAnchor.constraint(equalTo: self.imageView.centerXAnchor)
        let centerYImageCatConstraint = self.imageCatView.centerYAnchor.constraint(equalTo: self.imageView.centerYAnchor)
        let heightImageCatConstraint = self.imageCatView.heightAnchor.constraint(equalTo: self.view.widthAnchor)
        let widthImageCatConstraint = self.imageCatView.widthAnchor.constraint(equalTo: self.view.widthAnchor)

        let topButtonConstraint = self.playButton.topAnchor.constraint(equalTo: self.imageCatView.bottomAnchor, constant: 2)
        let trailingButtonConstraint = self.playButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16)
        let heightButtonConstraint = self.playButton.heightAnchor.constraint(equalToConstant: 80)
        let widthButtonConstraint = self.playButton.widthAnchor.constraint(equalToConstant: 80)

        NSLayoutConstraint.activate([topImageViewConstraint, leadingImageViewConstraint, trailingImageViewConstraint, bottomImageViewConstraint, centerXImageCatConstraint, centerYImageCatConstraint, heightImageCatConstraint, widthImageCatConstraint, topButtonConstraint, trailingButtonConstraint, heightButtonConstraint, widthButtonConstraint])
    }

    @objc private func buttonPressed() {

        let image1 = UIImage(named: "1")
        let image2 = UIImage(named: "2")
        let image3 = UIImage(named: "3")
        let image4 = UIImage(named: "4")
        let image5 = UIImage(named: "5")
        let image6 = UIImage(named: "6")

        let cats = [image1, image2, image3, image4, image5, image6]

        imageCatView.image = cats[Int.random(in: 0...5)]

    }
}


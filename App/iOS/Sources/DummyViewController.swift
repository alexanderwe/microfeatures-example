//
//  DummyViewController.swift
//  iOS
//
//  Created by Alexander Weiß on 11.01.22.
//

import UIKit
import DependencyInjection
import OrderInterface
import SearchInterface

final class DummyViewController: UIViewController {
    
    // Inject services to proof injection and initialization works correctly
    @Injected private var searchService: SearchAPI
    @Injected private var orderService: OrderAPI

    private lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.text = "Hello from example food app"
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    
}

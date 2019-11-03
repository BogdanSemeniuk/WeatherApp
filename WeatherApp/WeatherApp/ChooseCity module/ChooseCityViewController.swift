//
//  ChooseCityViewController.swift
//  WeatherApp
//
//  Created by My profile on 03.11.2019.
//  Copyright © 2019 Bogdan. All rights reserved.
//

import UIKit

final class ChooseCityViewController: UIViewController {
    
    var chooseCityViewModel: ChooseCityViewModel!
    var configurator = ChooseCityConfigurator()
    
    @IBOutlet private weak var cityLabel: UILabel!
    @IBOutlet private weak var citiesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(controller: self)
    }
    
    @IBAction private func showWeatherAction(_ sender: UIButton) {
    }
}

// MARK: - UITableViewDelegate
extension ChooseCityViewController: UITableViewDelegate {
    
}

// MARK: - UITableViewDataSource
extension ChooseCityViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

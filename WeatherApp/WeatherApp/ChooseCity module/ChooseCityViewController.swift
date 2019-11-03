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
        chooseCityViewModel.selectedCityAtIndex = { [weak self] city, indexRow in
            self?.cityLabel.text = city
            self?.citiesTableView.selectRow(at: IndexPath(row: indexRow, section: 0), animated: true, scrollPosition: .top)
        }
    }
    

    private func showAlert(withMessage message: String) {
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel))
        present(alert, animated: true)
    }
    
    @IBAction private func showWeatherAction(_ sender: UIButton) {
    }
}

// MARK: - UITableViewDelegate
extension ChooseCityViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

// MARK: - UITableViewDataSource
extension ChooseCityViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chooseCityViewModel.allCities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = chooseCityViewModel.allCities[indexPath.row]
        return cell
    }
}

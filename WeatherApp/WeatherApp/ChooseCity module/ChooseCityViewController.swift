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
        configureUI()
    }
    
    private func configureUI() {
        cityLabel.text = chooseCityViewModel.city
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
        do {
            let city = try chooseCityViewModel.city(at: indexPath.row)
            cell.textLabel?.text = city
        } catch CitiesError.cityIsUnknown {
            showAlert(withMessage: "City is unknown")
        } catch {
            showAlert(withMessage: "Index is out of range")
        }
        return cell
    }
}

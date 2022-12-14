//
//  ConfigManager.swift
//  DatWeatherDoe
//
//  Created by Inder Dhir on 1/29/16.
//  Copyright © 2016 Inder Dhir. All rights reserved.
//

import Foundation

protocol ConfigManagerType: AnyObject {
    var temperatureUnit: String { get set }
    var weatherSource: String { get set }
    var weatherSourceText: String? { get set }
    var refreshInterval: TimeInterval { get set }
    var isShowingWeatherIcon: Bool { get set }
    var isShowingHumidity: Bool { get set }
    var isRoundingOffData: Bool { get set }
    var isWeatherConditionAsTextEnabled: Bool { get set }
}

final class ConfigManager: ConfigManagerType {

    private enum DefaultsKeys: String {
        case temperatureUnit
        case weatherSource
        case weatherSourceText
        case refreshInterval
        case isShowingWeatherIcon
        case isShowingHumidity
        case isRoundingOffData
        case isWeatherConditionAsTextEnabled
    }

    @Storage(
        key: DefaultsKeys.temperatureUnit.rawValue,
        defaultValue: TemperatureUnit.fahrenheit.rawValue
    )
    public var temperatureUnit: String

    @Storage(
        key: DefaultsKeys.weatherSource.rawValue,
        defaultValue: WeatherSource.location.rawValue
    )
    public var weatherSource: String

    @Storage(key: DefaultsKeys.weatherSourceText.rawValue, defaultValue: nil)
    public var weatherSourceText: String?

    @Storage(
        key: DefaultsKeys.refreshInterval.rawValue,
        defaultValue: RefreshInterval.fifteenMinutes.rawValue
    )
    public var refreshInterval: TimeInterval
    
    @Storage(key: DefaultsKeys.isShowingWeatherIcon.rawValue, defaultValue: true)
    public var isShowingWeatherIcon: Bool

    @Storage(key: DefaultsKeys.isShowingHumidity.rawValue, defaultValue: false)
    public var isShowingHumidity: Bool

    @Storage(key: DefaultsKeys.isRoundingOffData.rawValue, defaultValue: false)
    public var isRoundingOffData: Bool

    @Storage(
        key: DefaultsKeys.isWeatherConditionAsTextEnabled.rawValue,
        defaultValue: false
    )
    public var isWeatherConditionAsTextEnabled: Bool
}

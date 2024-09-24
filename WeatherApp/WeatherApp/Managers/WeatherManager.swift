//
//  WeatherManager.swift
//  WeatherApp
//
//  Created by Kane Denzil Quadras Bernard on 2024-08-26.
//

import CoreLocation
import Foundation

class WeatherManager {

    func getCurrentWeather(
        latitude: CLLocationDegrees, longitude: CLLocationDegrees
    ) async throws -> ResponseBody {
        guard
            let url = URL(
                string:
                    "https://api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitude)&appid=3b7cf385307f57e182c61cf652d7596a&units=metric"
            )
        else { fatalError("Missing URL") }
        let urlRequest = URLRequest(url: url)
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            fatalError("Error Fetching the Request")
        }
        let decodeData = try JSONDecoder().decode(ResponseBody.self, from: data)
        print("DECODED DATA", decodeData)
        return decodeData
    }
}

struct ResponseBody: Decodable {
    var coord: CoordinateResponse
    var wind: WindResponse
    var main: MainResponse
    var clouds: CloudsResponse
    var weather: [WeatherReponse]
    var sys: SystemResponse
    var name: String
    var base: String
    var visibility: Int
    var dt: Int
    var timezone: Int
    var id: Int
    var cod: Int

    struct SystemResponse: Decodable {
        var sunrise: Int
        var sunset: Int
    }

    struct WeatherReponse: Decodable {
        var id: Int
        var main: String
        var description: String
        var icon: String
    }

    struct CloudsResponse: Decodable {
        var all: Int
    }

    struct MainResponse: Decodable {
        var temp: Double
        var feels_like: Double
        var temp_min: Double
        var temp_max: Double
        var pressure: Int
        var humidity: Double
        var sea_level: Int
        var grnd_level: Int
    }

    struct CoordinateResponse: Decodable {
        var lon: Double
        var lat: Double
    }

    struct WindResponse: Decodable {
        var speed: Double
        var deg: Int
        var gust: Double?
    }
}

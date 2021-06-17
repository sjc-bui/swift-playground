import UIKit

struct MainCourse: Codable {
    let name, dDescription: String
    let courses: [Course]
}

// MARK: - Course
struct Course: Codable {
    let id: Int
    let name: String
    let link, imageURL: String
    let numberOfLessons: Int

    enum CodingKeys: String, CodingKey {
        case id, name, link
        case imageURL = "imageUrl"
        case numberOfLessons
    }
}

let jsonUrlString = "http://api.letsbuildthatapp.com/jsondecodable/website_description"

// URLSession
func fetchData<T>(url: String, completion: @escaping (_ dt: T?, _ err: Error?) -> Void) where T: Decodable {
  guard let url = URL(string: url) else { return }
  
  let config = URLSessionConfiguration.default
  config.timeoutIntervalForRequest = 3
  config.timeoutIntervalForResource = 3

  let session = URLSession(configuration: config)
  session.dataTask(with: url) { data, _, error in
    guard let data = data else { return }
    do {
      let result = try JSONDecoder().decode(T.self, from: data)
      completion(result, nil)
    } catch let error {
      completion(nil, error)
    }
  }.resume()
}

fetchData(url: jsonUrlString) { (data: MainCourse?, error) in
  guard let data = data else { return }
  print(data.courses)
}

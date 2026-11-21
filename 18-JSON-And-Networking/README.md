# JSON Parsing and Networking

## Learning objectives
- Understand JSON objects, arrays, keys, and values.
- Decode JSON into Swift models using `Codable`.
- Fetch remote data using `URLSession` and async/await.
- Handle HTTP responses, decoding failures, and network errors.
- Display fetched API data in an application UI.

## Example files
- `01_CodableJSONParsing.swift`: decode a JSON string into Swift models.
- `02_URLSessionNetworking.swift`: fetch and decode remote JSON.
- `03_APIListViewController.swift`: display fetched data in a UIKit table view.

## Run
Use Xcode on macOS. Add the Swift files to an iOS app target. The networking examples require an internet connection. The API example uses the public JSONPlaceholder demo service.

## Key concepts
- `Decodable`: converts external data into Swift values.
- `Codable`: supports both encoding and decoding.
- `JSONDecoder`: decodes JSON data.
- `URLSession`: performs network requests.
- `async/await`: makes asynchronous code easier to read.
- Always validate the HTTP response and handle errors.
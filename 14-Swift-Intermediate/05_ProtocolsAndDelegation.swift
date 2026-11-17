// Delegation lets one object communicate an event to another object.
protocol DownloadDelegate: AnyObject {
    func downloadDidFinish(fileName: String)
}

class FileDownloader {
    weak var delegate: DownloadDelegate?

    func download(fileName: String) {
        print("Downloading \(fileName)...")
        print("Download completed.")
        delegate?.downloadDidFinish(fileName: fileName)
    }
}

class DownloadScreen: DownloadDelegate {
    func downloadDidFinish(fileName: String) {
        print("Screen updated: \(fileName) is ready.")
    }
}

let screen = DownloadScreen()
let downloader = FileDownloader()
downloader.delegate = screen
downloader.download(fileName: "training-notes.pdf")

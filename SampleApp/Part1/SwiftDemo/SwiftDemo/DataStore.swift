import Foundation

struct Movie {
    let name:String
    let photoName:String
    let url:String
}


class DataStore {
    var movies:[Movie] = []
}

extension DataStore {

    // Get videos from here: https://vimeo.com/theworkinggroup

    // Download images wherever you want
    func loadTestStore() {
        let movie = Movie(
            name: "Haris",
            photoName: "poster.jpg",
            url: "https://06-lvl3-pdl.vimeocdn.com/01/1210/5/131053193/381333554.mp4?expires=1447283176&token=0ebb24e18b1813e58f740"
        )
        self.movies.append(movie)
    }
}

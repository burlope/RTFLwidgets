
import Foundation
import SwiftUI

struct mainSupport: Hashable, Codable, Identifiable{
    var id: Int
    var song: String
    var Artist: String
    private var img: String
    var image: Image {
        Image(img)
    }
    
}

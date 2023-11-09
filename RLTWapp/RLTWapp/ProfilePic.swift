//
//  ProfilePic.swift
//  RLTWapp
//
//  Created by Kadam Dai on 30/09/23.
//

import SwiftUI

struct ProfilePic: View {
    var image: Image
    var body: some View {
        Image("proPic").resizable().clipShape(Circle()).frame(width: 100,height: 100).shadow(radius: 20)
    }
}

struct ProfilePic_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePic(image: Image("proPic"))
    }
}

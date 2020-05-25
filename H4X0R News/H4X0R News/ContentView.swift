//
//  ContentView.swift
//  H4X0R News
//
//  Created by Jagdev Singh Jhajj on 2020-05-24.
//  Copyright © 2020 Jagdev Singh Jhajj. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    NavigationView{
        List(posts) { post in
            Text(post.title)
        }
    .navigationBarTitle("H4X0R News")
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




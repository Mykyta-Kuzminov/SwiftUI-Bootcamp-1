//
//  TextEditorBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 30.10.2023.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText: String = ""
    @State var comments: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: 300)
                    .scrollContentBackground(.hidden)
                    .background(.thinMaterial)
                    .clipShape(.rect(cornerRadius: 20))
                Button {
                    comment()
                    textEditorText = ""
                } label: {
                    Text("Comment")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.white)
                        .frame(maxWidth: .infinity, maxHeight: 60)
                        .background(Color.blue)
                        .clipShape(.rect(cornerRadius: 20))
                }
                ScrollView {
                    ForEach(comments, id: \.self) { comment in
                        VStack {
                            HStack {
                                Circle()
                                    .frame(width: 30, height: 30)
                                Text("@username")
                                
                                Spacer()
                            }
                            Text(comment)
                                .frame(maxWidth: .infinity, maxHeight: 400, alignment: .leading)
                                .multilineTextAlignment(.leading)
                        }
                    }
                }
            }
            .navigationTitle("TextEditor")
            .padding()
        }
    }
    
    func comment() {
        comments.append(textEditorText)
    }
}

#Preview {
    TextEditorBootcamp()
}

//
//  StateBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 27.10.2023.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color.cyan)
                .shadow(color: .blue, radius: 5)
                .frame(width: 270, height: 400)
            
            VStack {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 250, height: 200)
                    .overlay {
                        Text("\(count)")
                            .font(.system(size: 50, weight: .semibold))
                            .foregroundStyle(Color.black)
                    }
                
                Spacer()
                
                HStack(spacing: 50) {
                    Button {
                        withAnimation(.easeInOut) {
                            count += 1
                        }
                    } label: {
                        Image(systemName: "plus")
                            .background {
                                Circle()
                                    .fill(.thinMaterial)
                                    .frame(width: 60, height: 60)
                                    .shadow(color: .white, radius: 5)
                            }
                    }
                    
                    Button {
                        withAnimation(.easeInOut) {
                            count -= 1
                        }
                    } label: {
                        Image(systemName: "minus")
                            .background {
                                Circle()
                                    .fill(.thinMaterial)
                                    .frame(width: 60, height: 60)
                                    .shadow(color: .white, radius: 5)
                            }
                    }
                }
                .font(.largeTitle)
                .fontWeight(.semibold)
                .tint(Color.black)
                
                Spacer()
            }
            .frame(width: 250, height: 380)
        }
    }
}

#Preview {
    StateBootcamp()
}

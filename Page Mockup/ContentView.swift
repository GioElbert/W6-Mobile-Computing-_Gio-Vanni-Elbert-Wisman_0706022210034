//
//  ContentView.swift
//  Page Mockup
//
//  Created by student on 25/10/24.
//
import SwiftUI


struct ContentView: App {
    var body: some Scene {
        WindowGroup {
            ProfileView() // This is the main view
        }
    }
}

struct ProfileView: View {
    var body: some View {
        ScrollView {
            VStack {
                // Profile Image
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(.top)
                   
                
                
                Text("@Gio")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                // Name and Location
                Text("Gio Vanni Elbert Wisman")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("Surabaya | Joined November 2022")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                // Follow and Message Buttons
                HStack(spacing: 20) {
                    Button(action: {}) {
                        Text("Follow")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    Button(action: {}) {
                        Text("Message")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.gray.opacity(0.2))
                            .foregroundColor(.blue)
                            .cornerRadius(8)
                    }
                    Button(action: {}) {
                        Text("More")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.gray.opacity(0.2))
                            .foregroundColor(.blue)
                            .cornerRadius(8)
                    }
                }
                .padding(.horizontal)
                
                // Bio Section
                Text("CEO System D, Because your satisfaction is everything & standing out from the rest, and that’s what we want you to be as well.")
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                // Information Section
                VStack(alignment: .leading, spacing: 8) {
                    Text("Information")
                        .font(.headline)
                        .padding(.top)
                    
                    HStack {
                        Image(systemName: "globe")
                        Text("www.Giovanni.com")
                        Spacer()
                    }
                    
                    HStack {
                        Image(systemName: "envelope")
                        Text("gvannielbert@student.ciputra.ac.id")
                        Spacer()
                    }
                    
                    HStack {
                        Image(systemName: "phone")
                        Text("+62 852 4386 1343")
                        Spacer()
                    }
                    
                    HStack {
                        Image(systemName: "calendar")
                        Text("Joined 20 November, 2022")
                        Spacer()
                    }
                }
                .padding(.horizontal)
                
                // Tag Section
                 
                    HStack {
                        TagView(tag: "UI Designer")
                        TagView(tag: "UX Designer")
                        TagView(tag: "Design System")
                        
                    }
                
                HStack {
                        TagView(tag: "Product")
                        TagView(tag: "Succesfull")
                    }
                  
                    .padding(.horizontal)
                }
                .padding(.bottom)
            }
        }
    }


struct TagView: View {
    var tag: String
    var body: some View {
        Text(tag)
            .padding(8)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(8)
            .foregroundColor(.black)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}


#Preview {
    ProfileView()
}

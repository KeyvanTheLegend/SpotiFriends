//
//  ContentView.swift
//  SpotiFriends
//
//  Created by sh on 7/31/21.
//

import SwiftUI

struct LoginView: View {
    @State private var isLogin = false
    @State var username : String = ""
    @State var password :String = ""
    
    
    init(){
        UINavigationBar.setAnimationsEnabled(false)
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Spacer()
                Logo()
                Spacer()
                Group{
                    UsernameTextField(username: $username)
                    PasswordTextField(password: $password)
                    LoginButton(isLogin: $isLogin, username: $username)
                }
                Spacer()
                SignupView()
                Spacer()
                Group{
                    NavigationLink(
                        destination: HomeView(),
                        isActive: $isLogin,
                        label: {EmptyView()})
                }
                
            }
            .background(Color.GradientBackground)
            .ignoresSafeArea()
            
            
        }.navigationBarHidden(false)
        
    }
    
    
}
//struct GradientBackground : View {
//    var body: some View {
//        RadialGradient(gradient: Gradient(colors: [Color.BackgroundColor.opacity(0.93), Color.BackgroundColor]), center: .center, startRadius: 1, endRadius: 500)
//    }
//}
struct Logo : View {
    var body: some View {
        Group{
            Image("spotifyicon")
                .resizable()
                .frame(width: 80, height: 80, alignment: .center)
                .clipped()
                .aspectRatio(contentMode: .fit)
            
            Text("Spotify Friends")
                .padding(1)
                .foregroundColor(.green)
                .font(.system(size: 16, weight: .bold, design: .rounded))
        }
    }
}
struct SignupView : View {
    var body: some View {
        HStack(alignment: .center, spacing: 8, content: {
            Text("Don't have an account ?")
                .foregroundColor(.white)
            Button(action: {
                
            }, label: {
                Text("Signup")
                    .foregroundColor(.green)
                    .padding(3)
            })
            
        })
    }
}
struct LoginButton : View {
    @Binding var isLogin : Bool
    @Binding var username : String
    var body: some View{
        Button(action: {
            self.isLogin = true
            print("HI \(username)")
            
            
        }, label: {
            Text("Login")
                .fontWeight(.medium)
        })
        
        .padding(EdgeInsets(top: 12, leading: 64, bottom: 12, trailing: 64))
        .background(Color.green)
        .foregroundColor(.black)
        .cornerRadius(8)
        .clipped()
    }
}
struct UsernameTextField: View {
    @Binding var username  : String
    
    var body : some View {
        HStack(alignment: .center, spacing: 24, content: {
            Spacer()
            TextField("", text : $username)
                .placeholder(when: username.isEmpty ,alignment: .center, placeholder: {
                    Text("Username")
                        .foregroundColor(Color.white)
                })
                .padding([.leading,.trailing],32)
                .padding([.bottom,.top], 12)
                .foregroundColor(.white)
                .background(Color.LightGray)
                .cornerRadius(8)
                .accentColor(.green)
                .font(
                    .system(
                        size: 16,
                        weight: .regular,
                        design: .monospaced
                    )
                )
                .multilineTextAlignment(.center)
            Spacer()
        })
    }
}
struct PasswordTextField : View {
    @Binding var password :String
    var body: some View {
        HStack(alignment: .center, spacing: 24, content: {
            Spacer()
            SecureField("", text : $password)
                
                .placeholder(when: password.isEmpty ,alignment: .center, placeholder: {
                    Text("Password")
                        .foregroundColor(Color.white)
                })
                .foregroundColor(.white)
                .accentColor(.green)
                .padding([.leading,.trailing],32)
                .padding([.bottom,.top], 12)
                .background(Color.LightGray)
                
                .cornerRadius(8)
                .font(
                    .system(
                        size: 16,
                        weight: .regular,
                        design: .monospaced
                    )
                )
                .multilineTextAlignment(.center)
                .textContentType(.password)
                .padding(.bottom, 32)
                .padding(.top, 12)
            
            Spacer()
        })
    }
}
struct HomeView : View {
    var body: some View {
        NavigationView{
            VStack(alignment: .center, spacing: 10, content: {
                Text("Test")
                Text("Test")
                Text("Test")
                Text("Test")
                
            })
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(RadialGradient(gradient: Gradient(colors: [Color.BackgroundColor.opacity(0.93), Color.BackgroundColor]), center: .center, startRadius: 1, endRadius: 500))
            .ignoresSafeArea()
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
            LoginView()
                .previewDevice("iPhone 12 Pro Max")
        }
    }
}
extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {
        
        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}

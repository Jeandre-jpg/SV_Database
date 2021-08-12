//
//  SettingsView.swift
//  Stardew_Library_Root
//
//  Created by Jeandré De Villiers on 2021/07/28.
//

import SwiftUI

var colour9 = hexStringToUIColor(hex: "#F2BE22")
var colour10 = hexStringToUIColor(hex: "#42B5F4")


struct SettingsView: View {
    
    @State var receive = false
    @State var notificationsOn = false
    
    var body: some View {
        ZStack {
            Color(colour9)
        .edgesIgnoringSafeArea(.all)
            
            
         
            
            VStack {
                HStack{
                
                VStack {
            
                    cell(header: "Settings",color: Color(colour8), text: "The official unofficial Stardew Valley Database")
                      
                }
                   
                    
                  
                }
                
                HStack(spacing:20){
                    
                    MoonImage()
           
                Toggle(isOn: $notificationsOn) {
                                    Text("Change Appearance")
                                        .font(.system(size: 17, design: .rounded))
                }.padding()
                    Spacer()
                }
                
                
            
                Spacer()
               
               
            }
            
            
            
            VStack(spacing: 5){
                
                Spacer()
                
                
                cell(header: "GitHub Link",color: Color(colour10),text: "https: //github.com/Jeandre-jpg/Stardew_Library.git")
                
                cell(header: "App Name",color: Color(colour10), text: "Stardew Library")
        
                cell(header: "Developer Name",color: Color(colour10), text: "Jeandré De Villiers")
            
                cell(header: "App Description",color: Color(colour10), text: "The application will be connected to the game, Stardew Valley. The app will show some of the collectables within the game, from Items Shipped, Fish, Artefacts, Minerals and Cooking. This library system will also then show each categories information on a certain object.")
           }
           
                
    }
    }
        

    

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

    struct MoonImage : View {
        
        var body: some View {
            Image("moon")
                .resizable()
                .frame(width: 25, height: 25)
                .aspectRatio(contentMode: .fit)
                .padding()
        }
    }

    func cell(header: String, color: Color, text: String) -> some View {
       
        HStack {
            
            VStack(alignment: .leading, spacing: 10) {
                Text(header)
                    .font(Font.custom("pixel", size: 20))
                Text(text)
                   .fontWeight(.semibold)
                    .font(Font.custom("dogica", size: 10))
            }
            Spacer()
            
        }
        
        .padding(27)
        .foregroundColor(.white)
        .background(color)
        .cornerRadius(10)
        .padding()
    }

func pushEnabledAtOSLevel(){

    UNUserNotificationCenter.current().getNotificationSettings { (settings) in
                  if settings.authorizationStatus == .denied {
                      // Notifications are allowed
                      let content = UNMutableNotificationContent()
                      content.title = "Elini Yıka"
                      content.subtitle = "Çabuk ol git! Elini Yıka!"
                      content.sound = UNNotificationSound.default

                      // show this notification five seconds from now
                      let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 3, repeats: false)

                      // choose a random identifier
                      let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

                      // add our notification request
                      UNUserNotificationCenter.current().add(request)
                      //self.notificationsOn = true

                  }
                  else {
                      UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                          if success {
                            //MARK: - Toogle'ın değiştiği yer.
                              print("Bildirimlere izin verildi.")
                            //Toggle'ıdeğiştirdiğim yer burası.

                              self.notificationsOn = true
                          } else if let error = error {
                              print("Bildirimler kapalı.")
                              print(error.localizedDescription)
                            //Toggle'ıdeğiştirdiğim yer burası.
                              self.notificationsOn = false
                          }
                      }
                  }
              }
          }
}

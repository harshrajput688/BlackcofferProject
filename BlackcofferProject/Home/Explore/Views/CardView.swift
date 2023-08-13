//
//  CardView.swift
//  BlackcofferProject
//
//  Created by Harsh Rajput on 09/08/23.
//

import SwiftUI

/// A view that displays a card containing information about a near person.
struct CardView: View {
    var nearPerson: PersonDataResponce
    @State var sendInvite: Bool = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: UIScreen.main.bounds.width / 1.35, height: UIScreen.main.bounds.height / 4.5)
                .foregroundColor(.white)
                .cornerRadius(20)
                .shadow(radius: 3, x: 5, y: 3)
                .padding(.leading)
            
            VStack(alignment: .leading) {
                Button {
                    sendInvite.toggle()
                } label: {
                    Text(sendInvite ? Responce.Pending.rawValue.uppercased() : Responce.Invite.rawValue.uppercased())
                }
                .font(.body)
                .fontWeight(.bold)
                .offset(x: 215, y: 5)
                .foregroundColor(sendInvite ? Color.gray : Color("Background"))
                
                HStack {
                    Image(nearPerson.person.profileImg)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 70, height: 80)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                    
                    VStack(alignment: .leading) {
                        Text(nearPerson.person.name)
                            .font(.body)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Background"))
                        
                        Text("\(nearPerson.person.location), within \(nearPerson.person.range)")
                            .font(.footnote)
                            .foregroundColor(Color("notSelect"))
                        
                        ZStack(alignment: .leading) {
                            Rectangle()
                                .frame(width: UIScreen.main.bounds.width / 3, height: 15)
                                .cornerRadius(10)
                                .foregroundColor(Color.gray.opacity(0.5))
                            
                            Rectangle()
                                .frame(width: (UIScreen.main.bounds.width / 3) / (10 - 8), height: 15)
                                .cornerRadius(10)
                                .foregroundColor(Color("tabBarColor"))
                        }
                    }
                }
                .offset(x: -29, y: -10)
                
                VStack(alignment: .leading) {
                    Text(nearPerson.person.bio)
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Background"))
                        .padding(.bottom, 1)
                    
                    Text(nearPerson.person.status)
                        .font(.footnote)
                        .lineLimit(2)
                        .foregroundColor(Color("tabBarColor"))
                }
                .frame(width: UIScreen.main.bounds.width / 1.49, height: 60)
                .offset(x: 15)
            }
        }
        .padding(10)
        .padding(.leading, 10)
    }
}

/// A preview provider for the CardView.
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(nearPerson: PersonDataResponce(responce: false, person: NearPersonData(name: "Abhay Pundir", location: "Noid UttarPradesh", profileImg: "Harsh", range: "100KM", bio: "FriendShip|Coffee|Hangout", status: "Hi Community. I am open to connect")))
    }
}

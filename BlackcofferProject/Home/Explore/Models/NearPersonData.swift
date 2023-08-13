//
//  NearPersonData.swift
//  BlackcofferProject
//
//  Created by Harsh Rajput on 09/08/23.
//

import Foundation

/// A model representing data of a near person.
struct NearPersonData: Identifiable{
    let id: String = UUID().uuidString
    let name: String
    let location: String
    let profileImg: String
    let range: String
    let bio: String
    let status: String
}

/// An enumeration representing different response statuses.
enum Responce: String{
    case Invite = "+Invite"
    case Pending = "Pending"
}

/// An array of near person data with their responses.
let nerPersons: [PersonDataResponce] = [
    PersonDataResponce(responce: false, person: NearPersonData(name: "Abhay Pundir", location: "Noid UttarPradesh", profileImg: "person1", range: "100KM", bio: "FriendShip|Coffee|Hangout", status: "Hi Community. I am open to connect")),
    PersonDataResponce(responce: false, person: NearPersonData(name: "Muskan Chauhan", location: "Noid UttarPradesh", profileImg: "person2", range: "100KM", bio: "FriendShip|Coffee|Hangout", status: "Hi Community. I am open to connect")),
    PersonDataResponce(responce: true, person: NearPersonData(name: "Akash Kumar", location: "Noid UttarPradesh", profileImg: "person3", range: "100KM", bio: "FriendShip|Coffee|Hangout", status: "Hi Community. I am open to connect")),
    PersonDataResponce(responce: true, person: NearPersonData(name: "Aman Bhardwaj", location: "Noid UttarPradesh", profileImg: "person4", range: "100KM", bio: "FriendShip|Coffee|Hangout", status: "Hi Community. I am open to connect")),
    PersonDataResponce(responce: true, person: NearPersonData(name: "Priya Bhatt", location: "Noid UttarPradesh", profileImg: "person5", range: "100KM", bio: "FriendShip|Coffee|Hangout", status: "Hi Community. I am open to connect")),
    PersonDataResponce(responce: true, person: NearPersonData(name: "Ashish Kumar", location: "Noid UttarPradesh", profileImg: "person6", range: "100KM", bio: "FriendShip|Coffee|Hangout", status: "Hi Community. I am open to connect")),
    PersonDataResponce(responce: true, person: NearPersonData(name: "Bhagat Singh", location: "Noid UttarPradesh", profileImg: "person7", range: "100KM", bio: "FriendShip|Coffee|Hangout", status: "Hi Community. I am open to connect")),
    PersonDataResponce(responce: true, person: NearPersonData(name: "Gaurav Chauhan", location: "Noid UttarPradesh", profileImg: "person8", range: "100KM", bio: "FriendShip|Coffee|Hangout", status: "Hi Community. I am open to connect")),
    PersonDataResponce(responce: true, person: NearPersonData(name: "Anjali Rajput", location: "Noid UttarPradesh", profileImg: "person9", range: "100KM", bio: "FriendShip|Coffee|Hangout", status: "Hi Community. I am open to connect")),
    PersonDataResponce(responce: true, person: NearPersonData(name: "Mukul Kumar", location: "Noid UttarPradesh", profileImg: "person10", range: "100KM", bio: "FriendShip|Coffee|Hangout", status: "Hi Community. I am open to connect")),
    PersonDataResponce(responce: true, person: NearPersonData(name: "Priya thakur", location: "Noid UttarPradesh", profileImg: "person11", range: "100KM", bio: "FriendShip|Coffee|Hangout", status: "Hi Community. I am open to connect"))
]



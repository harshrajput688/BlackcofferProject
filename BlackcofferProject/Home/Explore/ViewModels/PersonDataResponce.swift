//
//  PersonDataResponce.swift
//  BlackcofferProject
//
//  Created by Harsh Rajput on 10/08/23.
//

import Foundation

class PersonDataResponce{
    let id: String = UUID().uuidString
    var responce: Bool
    let person: NearPersonData
    
    init(responce: Bool, person: NearPersonData) {
        self.responce = responce
        self.person = person
    }
    
    func changeResponce(){
        self.responce.toggle()
    }
}

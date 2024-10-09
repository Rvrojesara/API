//
//  catmodel.swift
//  ApiPractice
//
//  Created by admin on 08/10/24.
//

import Foundation


struct catmodel:Codable{
    let id:Int
    let name:String
    let origin:String
    let temperament:String
    let colors:[String]
    let description:String
    let image:String
}

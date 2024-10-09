//
//  ApiManager.swift
//  ApiPractice
//
//  Created by admin on 08/10/24.
//

import Foundation
import Alamofire

class ApiManager{
    
    let urlstr="https://freetestapi.com/api/v1/cats?limit=5"
    
    func ApiCall(catdata:@escaping(Result<[catmodel],Error>)->Void){
        AF.request(urlstr).responseDecodable(of:[catmodel].self){
            response in
                switch response.result{
                case.success(let data):
                    catdata(.success(data))
                
            case.failure(let error):
                catdata(.failure(error))
            }
            }
            
            
            
            
        }
        
    }



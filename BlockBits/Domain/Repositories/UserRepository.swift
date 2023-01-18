//
//  UserRepository.swift
//  BlockBits
//
//  Created by Higashikata Maverick on 17/1/23.
//

import Foundation
import Combine

class UserRepository {
    var loginProvider: LoginAdapter
    
    init(loginProvider: LoginAdapter) {
        self.loginProvider = loginProvider
    }
    
    func login(email: String, password: String) -> Future<User, Error> {
        return Future { promise in
            Task {
                let response = await self.loginProvider.login(email: email, password: password)
                
                if (!response.isOK) {
                    promise(.failure(CustomError(message: "Something went wrong")))
                }
                
                let user = response.body as! User
                promise(.success(user))
            }
        }
    }
}

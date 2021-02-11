//
//  UseCaseListener.swift
//  WebService
//
//  Created by Oguz Tandogan on 13.12.2020.
//

import Foundation

public protocol UseCaseListener {
    
    func useCasePreExecute()
    
    func useCasePostExecute()
    
}

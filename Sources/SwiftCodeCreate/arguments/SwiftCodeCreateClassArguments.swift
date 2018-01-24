//
// SwiftCodeCreateClassArguments.swift
//
// Created by David Thorn
// Copyright @ 2017 David Thorn. All rights reserved
//


public enum SwiftCodeCreateClassArguments: String {

    public init?(rawValue: String) {

        let parts = rawValue.components(separatedBy: rawValue)

        // argument 0 = the calling file
        // argument 1 = the command 
        

        switch parts.count {
            case 0: 
                self = .invalidNumberArguments
            case 1:
                
                switch parts[0] {
                    
                    default:
                        self = .filename
                }
            
            default: 

                switch parts[0] {

                    default:
                        self = .unknownCommand
                }

        }

    }

    case invalidNumberArguments

    case unknownCommand

    case filename

}
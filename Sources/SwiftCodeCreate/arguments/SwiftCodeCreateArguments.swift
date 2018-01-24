//
// SwiftCodeCreateFileArguments.swift
//
// Created by David Thorn
// Copyright @ 2017 David Thorn. All rights reserved
//


import Foundation

public enum SwiftCodeCreateFileArguments: String {

    public init?(rawValue: String) {

        let parts = rawValue.components(separatedBy: " ")

        // argument 0 = the calling file
        // argument 1 = the command 
        
        switch parts.count {
            case 0:
                self = .invalidNumberArguments
            case 1:
                
                switch parts[0]{
                    
                    case SwiftCodeCreateFileArguments.help.rawValue,
                        SwiftCodeCreateFileArguments.dashDashHelp.rawValue,
                        SwiftCodeCreateFileArguments.dashHelp.rawValue,
                        SwiftCodeCreateFileArguments.dashH.rawValue:

                        self = .help
                    case SwiftCodeCreateFileArguments.createViewController.rawValue:
                        self = .invalidNumberArguments
                    case SwiftCodeCreateFileArguments.createProtocol.rawValue:
                        self = .invalidNumberArguments
                    case SwiftCodeCreateFileArguments.createClass.rawValue:
                        self = .invalidNumberArguments
                    case SwiftCodeCreateFileArguments.createStruct.rawValue:
                        self = .invalidNumberArguments
                    case SwiftCodeCreateFileArguments.createEnum.rawValue:
                        self = .invalidNumberArguments

                    default:
                        self = .unknownCommand
                }
            default: 
               
                 switch parts[0]{
                    
                    case SwiftCodeCreateFileArguments.help.rawValue,
                        SwiftCodeCreateFileArguments.dashDashHelp.rawValue,
                        SwiftCodeCreateFileArguments.dashHelp.rawValue,
                        SwiftCodeCreateFileArguments.dashH.rawValue:

                        self = .help
                    case SwiftCodeCreateFileArguments.createViewController.rawValue:
                        self = .createViewController
                    case SwiftCodeCreateFileArguments.createProtocol.rawValue:
                        self = .createProtocol
                    case SwiftCodeCreateFileArguments.createClass.rawValue:
                        self = .createClass
                    case SwiftCodeCreateFileArguments.createStruct.rawValue:
                        self = .createStruct
                    case SwiftCodeCreateFileArguments.createEnum.rawValue:
                        self = .createEnum

                    default:
                        self = .unknownCommand
                }
                

        }

    }

    case createViewController = "view-controller"

    case createProtocol = "protocol"

    case createClass = "class"

    case createStruct = "struct"

    case createEnum = "enum"

    case dashDashHelp = "--help"

    case dashHelp = "-help"

    case dashH = "-h"

    case help

    case invalidNumberArguments

    case unknownCommand

    public var fileType: SwiftCodeFileType {

        switch self {
            case .createViewController: return .viewControllerFile
            case .createProtocol: return .protocolFile
            case .createClass: return .classFile
            case .createStruct: return .structFile
            case .createEnum: return .enumFile
            default: return .empty
        }

    }

}
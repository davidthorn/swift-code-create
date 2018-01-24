//
// SwiftFile.swift
//
// Created by David Thorn
// Copyright @ 2017 David Thorn. All rights reserved
//


import Foundation

public class SwiftFile {

    internal var type: SwiftCodeFileType

    internal var name: String

    internal var extends: String?

    internal var implements: [String]

    public init(name: String , type: SwiftCodeFileType , extends: String? = nil , implements: [String] = [] ) {
        self.name = name
        self.type = type
        self.extends = extends
        self.implements = implements
    }

    public func execute() {

        var contents = ""

        switch self.type {
            case .viewControllerFile:
                let viewController = ViewControllerFile(name: self.name , extends: extends , implements: implements )
                contents = viewController.contents()
                print("should create a view controller with name: \(self.name)")
            case .protocolFile:
                print("should create a protocol with name: \(self.name)")
            case .classFile:
                print("should create a class with name: \(self.name)")
            case .structFile:
                print("should create a struct with name: \(self.name)")
            case .enumFile:
                print("should create a enum with name: \(self.name)")
            case .empty:
                print("should create a empty with name: \(self.name)")
        }

        guard let fileName = self.getFileNamePath(with: self.name) else { return }

        let result = self.create(atPath: fileName , with: contents)

        print("the result is \(result)")

    }

    internal func getFileNamePath(with name: String , with fileExtension: String = "swift" ,  in directory: String = FileManager.default.currentDirectoryPath ) -> String? {

        let fileName = "\(name).\(fileExtension)"

        var fileURL = URL(string: directory)
        
        fileURL?.appendPathComponent(fileName)

        return fileURL?.path

    }

    internal func create(atPath: String, with contents: String ) -> Bool {

        let data = contents.data(using: .utf8)!

        let result = FileManager.default.createFile(atPath: atPath , contents: data)

        let exists = FileManager.default.fileExists(atPath: atPath )

        return exists && result

    }

}
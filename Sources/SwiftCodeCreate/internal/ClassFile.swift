//
// ClassFile.swift
//
// Created by David Thorn
// Copyright @ 2017 David Thorn. All rights reserved
//

import Foundation

internal class ClassFile {

    internal var name: String

    internal var extends: String?

    internal var suffix: String

    internal var implements: [String] = []

    public init(name: String , suffix: String = "" ,  extends: String? = nil , implements: [String] = [] ) {
        self.name = name
        self.extends = extends
        self.suffix = suffix
        self.implements = implements
    }

    public func contents() -> String {
        return self.fileContent
    }

    fileprivate var fileContent: String {

    var _extendsText = ""

    if let _extends = extends {
        _extendsText = ": \(_extends)"
    }

    let className = name.contains(suffix) ? name : "\(name)\(suffix)"

    let _implementsString = implements.count > 0 ? ",\(implements.joined(separator: ","))" : "" 

    return """
    //
    // \(className).swift
    //
    // Created by David Thorn on date come
    // Copyright @ 2017 David Thorn. All rights reserved
    //
    
    import UIKit

    public class \(className)\(_extendsText)\(_implementsString) {

    \(defaultConstructor())

    }


    """

    }

    public func defaultConstructor() -> String {
        return """
            public init() {

            }
        """
    }

}
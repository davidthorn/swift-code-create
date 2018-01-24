//
// ViewControllerFile.swift
//
// Created by David Thorn
// Copyright @ 2017 David Thorn. All rights reserved
//


import Foundation

internal class ViewControllerFile: ClassFile {

    public override init(name: String , suffix: String = "ViewController" ,  extends: String? = nil , implements: [String] = [] ) {
        super.init(name: name , suffix: suffix , extends: extends, implements: implements)
    }

    public override func defaultConstructor() -> String {
        return """
            public override viewDidLoad() {
                super.viewDidLoad()
            }
        """
    }

}
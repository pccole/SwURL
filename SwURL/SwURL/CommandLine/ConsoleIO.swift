//
//  ConsoleIO.swift
//  SwURL
//
//  Created by Phil Cole on 10/28/18.
//  Copyright © 2018 Phil Cole. All rights reserved.
//

import Foundation

enum OutputType {
    case error
    case standard
}

class ConsoleIO {
    
    static func writeMessage(_ message: String, to: OutputType = .standard) {
        switch to {
        case .standard:
            print("\u{001B}[;m\(message)")
        case .error:
            fputs("\u{001B}[0;31m\(message)\n", stderr)
        }
    }
    
    static func printUsage() {
        let executableName = (CommandLine.arguments[0] as NSString).lastPathComponent
        writeMessage("usage: \(executableName)")
        writeMessage("Type \(executableName) without an option to enter interactive mode.")
    }
    
    static func getInput() -> String {
        let keyboard = FileHandle.standardInput
        let inputData = keyboard.availableData
        let strData = String(data: inputData, encoding: String.Encoding.utf8)!
        return strData.trimmingCharacters(in: CharacterSet.newlines)
    }
}

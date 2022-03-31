import Foundation
import ArgumentParser
import InputSourceManager

struct ListInputSources: ParsableCommand {
    
    public static let configuration = CommandConfiguration(
        commandName: "list",
        abstract: "Lists input sources"
    )
    
    @Flag(help: "List all input sources.")
    var all = false
    
    func run() throws {
        var inputSources: [InputSource] = []
        let manager = InputSourceManager()
        
        if all {
            inputSources = manager.getAllInputSources()
        } else {
            inputSources = manager.getInstalledInputSources()
        }
        
        for inputSource in inputSources {
            print("Id :\(inputSource.id), name: \(inputSource.localizedName)")
        }
    }
}

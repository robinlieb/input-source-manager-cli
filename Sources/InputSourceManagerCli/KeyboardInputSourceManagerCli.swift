import Foundation
import ArgumentParser

struct KeyboardInputSourceManagerCli: ParsableCommand {
    
    static let configuration = CommandConfiguration(abstract: "A Swift command-line tool to orchestrate the input sources on MacOS", subcommands: [
        ListInputSources.self,
        SetInputSource.self
    ])
    
    init() { }
    
}

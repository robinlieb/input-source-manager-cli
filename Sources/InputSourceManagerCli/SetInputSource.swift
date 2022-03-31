import Foundation
import ArgumentParser
import InputSourceManager

struct SetInputSource: ParsableCommand {
    
    public static let configuration = CommandConfiguration(
        commandName: "set",
        abstract: "Sets current input source"
    )
    
    @Argument(help: "Input source id string to set the input source, e.g. com.apple.keylayout.US")
    private var inputSource: String
    
    func run() throws {
        let manager = InputSourceManager()
        manager.setInputSource(to: inputSource)
    }
}

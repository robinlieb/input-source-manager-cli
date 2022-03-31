import Foundation
import ArgumentParser
import InputSourceManager

struct GetInputSource: ParsableCommand {
    
    public static let configuration = CommandConfiguration(
        commandName: "get",
        abstract: "Gets the current input source"
    )
    
    func run() throws {
        let manager = InputSourceManager()
        guard let inputSource = manager.getCurrentKeybaordInputSource() else {
            print("No input source found")
            return
        }
        
        guard let layouInputSource = manager.getCurrentKeybaordLayoutInputSource() else {
            print("No input source found")
            return
        }
        
        print("Id :\(inputSource.id), name: \(inputSource.localizedName)")
        print("Id :\(layouInputSource.id), name: \(layouInputSource.localizedName)")
    }
}

import Foundation
import ArgumentParser
import InputSourceManager

struct GetInputSource: ParsableCommand {
    
    public static let configuration = CommandConfiguration(
        commandName: "get",
        abstract: "Gets the current input source"
    )
    
    @Flag(help: "Indicatetes if keyboard layout input source should be provided.")
    var layout = false
    
    func run() throws {
        let manager = InputSourceManager()
        
        if layout {
            guard let inputSource = manager.getCurrentKeybaordLayoutInputSource() else {
                print("No input source found")
                return
            }
            print("Id :\(inputSource.id), name: \(inputSource.localizedName)")
        } else {
            guard let inputSource = manager.getCurrentKeybaordInputSource() else {
                print("No input source found")
                return
            }
            print("Id :\(inputSource.id), name: \(inputSource.localizedName)")
        }
    }
}

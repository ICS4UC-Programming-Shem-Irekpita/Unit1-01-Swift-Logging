import Foundation

/// This program calculates the maximum number of maple wood logs a logging
/// truck can carry based on a user-specified log length. Maple wood weighs
/// 20 kg/m, and the truck has a strict weight capacity limit of 1,100 kg.
///
/// - Author: Shem Irekpita
/// - Version: 1.0
/// - Date: 2026-09-15
enum Logging {

    /// Main entry point of the program.
    static func main() {
        let maxCapacity: Double = 1100.0
        let weightPerMeter: Double = 20.0

        print("Please enter the length of the maple log ", terminator: "")
        print("in meters. Note that the length can ", terminator: "")
        print("only be 0.25, 0.5, or 1 meter. Only: ")

        guard let input = readLine(), let length = Double(input) else {
            print("Error: Please enter a valid numeric value for the length.")
            return
        }

        if length < 0 {
            print("Error: Length cannot be negative.")
        } else if length == 0 {
            print("The logs length cannot be 0.")
        } else if length == 0.25 || length == 0.5 || length == 1.0 {
            let weightPerLog = weightPerMeter * length
            let maxLogs = maxCapacity / weightPerLog
            print("The maximum number of logs the truck can carry is: \(Int(maxLogs))")
        } else {
            print("Error: Length must be either 0.25, 0.5, or 1 meter.")
        }
    }
}

// Execute the main program entry point
Logging.main()
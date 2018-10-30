// This file contains the fastlane.tools configuration
// You can find the documentation at https://docs.fastlane.tools
//
// For a list of all available actions, check out
//
//     https://docs.fastlane.tools/actions
//

import Foundation

class Fastfile: LaneFile {
	func customLane() {
	desc("Description of what the lane does")
		// add actions here: https://docs.fastlane.tools/actions
	}
    
    func betaLane() {
        desc("Submit a new Beta Build to Apple TestFlight. This will also make sure the profile is up to date")
        syncCodeSigning(gitUrl: "https://github.com/Sandeepwal/Fastlane-Demo.git", appIdentifier: ["com.wal.FastLane"], username: "pdabir@westagilelabs.com")
        // Build your app - more options available
        buildIosApp(scheme: "Release")
        uploadToTestflight(username: "pdabir@westagilelabs.com")
    }
    
    func beta () {
        buildIosApp(scheme: "FastLane")
    }
}

import AVFoundation
import Foundation

@MainActor
final class AudioPlayer: ObservableObject {
	private var player: AVAudioPlayer?

	func play(_ item: SoundItem) {
		stop()

		guard let url = Bundle.main.url(forResource: item.filename, withExtension: item.fileExtension) else {
			print("Sound file not found: \(item.filename).\(item.fileExtension)")
			return
		}

		do {
			let session = AVAudioSession.sharedInstance()
			try session.setCategory(.playback, mode: .default, options: [])
			try session.setActive(true, options: [])

			let audioPlayer = try AVAudioPlayer(contentsOf: url)
			audioPlayer.prepareToPlay()
			audioPlayer.play()
			self.player = audioPlayer
		} catch {
			print("Failed to play sound: \(error)")
		}
	}

	func stop() {
		player?.stop()
		player = nil
	}
}


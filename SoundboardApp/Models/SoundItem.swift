import Foundation

struct SoundItem: Identifiable, Hashable {
	let id = UUID()
	let title: String
	let filename: String
	let fileExtension: String
}


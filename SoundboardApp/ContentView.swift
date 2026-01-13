import SwiftUI

struct ContentView: View {
	private let items: [SoundItem] = [
		SoundItem(title: "Beep A", filename: "beep_a", fileExtension: "wav"),
		SoundItem(title: "Beep B", filename: "beep_b", fileExtension: "wav"),
		SoundItem(title: "Beep C", filename: "beep_c", fileExtension: "wav"),
		SoundItem(title: "Beep D", filename: "beep_d", fileExtension: "wav"),
		SoundItem(title: "Beep E", filename: "beep_e", fileExtension: "wav"),
		SoundItem(title: "Beep F", filename: "beep_f", fileExtension: "wav"),
		SoundItem(title: "Beep G", filename: "beep_g", fileExtension: "wav"),
		SoundItem(title: "Beep H", filename: "beep_h", fileExtension: "wav"),
		SoundItem(title: "Beep I", filename: "beep_i", fileExtension: "wav"),
		SoundItem(title: "Beep J", filename: "beep_j", fileExtension: "wav"),
		SoundItem(title: "Beep K", filename: "beep_k", fileExtension: "wav"),
		SoundItem(title: "Beep L", filename: "beep_l", fileExtension: "wav"),
	]

	@StateObject private var audioPlayer = AudioPlayer()

	private let columns: [GridItem] = [
		GridItem(.flexible(), spacing: 12),
		GridItem(.flexible(), spacing: 12),
		GridItem(.flexible(), spacing: 12),
	]

	var body: some View {
		NavigationStack {
			ScrollView {
				LazyVGrid(columns: columns, spacing: 12) {
					ForEach(items) { item in
						Button {
							audioPlayer.play(item)
						} label: {
							Text(item.title)
								.font(.headline)
								.frame(maxWidth: .infinity, maxHeight: .infinity)
								.padding(8)
						}
						.buttonStyle(.borderedProminent)
						.tint(.blue)
						.aspectRatio(1, contentMode: .fit)
					}
				}
				.padding()
			}
			.navigationTitle("Soundboard")
		}
	}
}

#Preview {
	ContentView()
}

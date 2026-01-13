import SwiftUI

struct ContentView: View {
	private let items: [SoundItem] = [
		SoundItem(title: "Beep A", filename: "beep_a", fileExtension: "wav"),
		SoundItem(title: "Beep B", filename: "beep_b", fileExtension: "wav"),
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


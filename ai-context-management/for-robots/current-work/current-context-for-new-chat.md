<!-- CURRENT WORK FILE - Keep this updated so new chats can pick up quickly. -->

# Current Context (For New Chat)

## Status
- New project.
- AI context management system added under `ai-context-management/`.
- Project setup docs initialized (vision + initial technical decisions captured).
- Initial iOS prototype scaffolded: `SoundboardApp.xcodeproj` (SwiftUI, iOS 17+, iPhone-only).

## What’s Working
- SwiftUI grid UI (`SoundboardApp/ContentView.swift`).
- Audio playback via `AVAudioPlayer` that stops the previous sound on new tap (`SoundboardApp/Audio/AudioPlayer.swift`).
- Twelve bundled sample sounds (`SoundboardApp/Resources/Sounds/beep_a.wav` … `SoundboardApp/Resources/Sounds/beep_l.wav`).

## Open Questions
- Audio UX details (looping, long-press, stop button, haptics, etc.)
- Initial sound set: how many buttons and where the sounds come from.
- Do we want a default grid size (e.g., 3x4) and a consistent button style (colors/labels)?

## Next Steps
- Open `SoundboardApp.xcodeproj` in Xcode, pick a simulator, and run.
- Add/replace bundled sounds and update the `items` list in `SoundboardApp/ContentView.swift`.

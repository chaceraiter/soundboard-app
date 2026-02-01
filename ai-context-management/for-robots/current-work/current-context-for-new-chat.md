<!-- CURRENT WORK FILE - Keep this updated so new chats can pick up quickly. -->

# Current Context (For New Chat)

## Status
- New project.
- AI context management system added under `ai-context-management/`.
- Project setup docs initialized (vision + initial technical decisions captured).
- Initial iOS prototype scaffolded: `SoundboardApp.xcodeproj` (SwiftUI, iOS 17+, iPhone-only).
- As of 2026-02-01, a “past chat record” summary exists to recover context if chat history is wiped.

## What’s Working
- SwiftUI grid UI (`SoundboardApp/ContentView.swift`).
- Audio playback via `AVAudioPlayer` that stops the previous sound on new tap (`SoundboardApp/Audio/AudioPlayer.swift`).
- Twelve bundled sample sounds (`SoundboardApp/Resources/Sounds/beep_a.wav` … `SoundboardApp/Resources/Sounds/beep_l.wav`).
- App icon generation script: `scripts/generate_app_icons.sh` (generates required icon sizes from a 1024×1024 PNG source).

## Open Questions
- Audio UX details (looping, long-press, stop button, haptics, etc.)
- Initial sound set: how many buttons and where the sounds come from.
- Do we want a default grid size (e.g., 3x4) and a consistent button style (colors/labels)?
- Should we commit generated app icon PNGs (and the source `AppIcon-1024.png`) for distribution?

## Next Steps
- Open `SoundboardApp.xcodeproj` in Xcode, pick a simulator, and run.
- Add/replace bundled sounds and update the `items` list in `SoundboardApp/ContentView.swift` (user will bring their own sounds).
- Commit/push pending app icon work after deciding whether to keep the generated icons in git.

<!-- PROJECT SETUP FILE - Define and keep consistent. -->

# Code Patterns & Conventions

## Language
- Swift

## UI Patterns
- SwiftUI-first
- Prefer lightweight state in views (`@State`, `@Binding`) and push reusable logic into small model/controller types when needed

## Naming & Style
- Prefer clarity over cleverness
- Keep files small and focused
- Add tests where practical for non-UI logic (XCTest)

## Error Handling
- Prefer explicit user-facing errors for import/playback failures (future)

## MVP Defaults
- Buttons map to bundled sound asset filenames
- One-sound-at-a-time playback (stop previous on new tap)

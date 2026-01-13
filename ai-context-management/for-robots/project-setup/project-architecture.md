<!-- PROJECT SETUP FILE - Fill in as decisions get made. -->

# Project Architecture

## Platform
- iOS
- Target devices: iPhone only (for now)
- Minimum iOS version: iOS 17+

## UI
- SwiftUI

## Audio
- AVFoundation using `AVAudioPlayer`
- MVP playback policy: single active sound (tapping a new button stops the previous sound)
- Configure `AVAudioSession` for predictable speaker playback (details as implemented)

## Data Model
- Sound buttons: metadata + sound asset reference
- Stored as bundled app assets for MVP (future: user-imported files)

## Persistence
- None for MVP (bundled configuration)
- Future: local persistence for custom buttons/sounds (file system + Codable or similar)

## Project Structure
- Keep the MVP simple and feature-oriented (e.g., `Audio/`, `Soundboard/`, `Models/`), growing structure only as needed

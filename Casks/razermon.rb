cask "razermon" do
  version "0.3.2"
  sha256 "ea31afddbb5a0b1b9ea1dfbf1ebd1124742813823b9a6987fbaf410ed5724fd7"

  url "https://github.com/ab4317/RazerMon/releases/download/v#{version}/RazerMon-#{version}-arm64.dmg"
  name "RazerMon"
  desc "Menu bar battery monitor for wireless Razer devices"
  homepage "https://github.com/ab4317/RazerMon"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "RazerMon.app"

  zap trash: [
    "~/Library/Containers/io.github.ab4317.razermon",
    "~/Library/Preferences/io.github.ab4317.razermon.plist",
  ]

  caveats <<~EOS
    RazerMon is independently distributed and is not notarized by Apple.
    If macOS blocks the first launch, open System Settings > Privacy & Security
    and choose Open Anyway. On macOS 14 and earlier, Control-click RazerMon in
    Applications, choose Open, then confirm Open.

    After an update, grant Input Monitoring permission to RazerMon again.
  EOS
end

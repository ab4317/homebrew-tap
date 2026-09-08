cask "razermon" do
  version "0.3.1"
  sha256 "d7eb9196d073399861b880d788c8238b0ea2b07965d49ba9a5f8d63621392a1e"

  url "https://github.com/ab4317/RazerMon/releases/download/v#{version}/RazerMon-#{version}-arm64.dmg"
  name "RazerMon"
  desc "Menu bar battery monitor for wireless Razer devices"
  homepage "https://github.com/ab4317/RazerMon"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "RazerMon.app"

  caveats <<~EOS
    RazerMon is independently distributed and is not notarized by Apple.
    If macOS blocks the first launch, Control-click RazerMon in Applications,
    choose Open, then confirm Open.
  EOS

  zap trash: [
    "~/Library/Preferences/io.github.ab4317.razermon.plist",
  ]
end

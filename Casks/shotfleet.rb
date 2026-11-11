cask "shotfleet" do
  version "0.1.11"
  sha256 "24c31120fbaca6fcdcb1ace271f49689c8dc077615491601312fc1cc20a3d124"

  url "https://shotfleet.com/download/#{version}/shotfleet-macos-arm64.tar.gz"
  name "shotfleet"
  desc "Localized App Store and Google Play screenshots, checked in every language"
  homepage "https://shotfleet.com/"

  livecheck do
    url "https://shotfleet.com/download/VERSION"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  binary "shotfleet/shotfleet"

  caveats <<~EOS
    Next: shotfleet doctor --fix (it installs Maestro and Java), then shotfleet init in your app's folder.
    Your licence key: shotfleet activate <key> (check is free without one).
  EOS
end

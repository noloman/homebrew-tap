cask "shotfleet" do
  version "0.1.8"
  sha256 "ccc59edac5b3fca234e0d3bfe01c0c3423479193da951596b0950199bdb1787d"

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

cask "shotfleet" do
  version "0.1.4"
  sha256 "112f2d766f181fda4ef8ac499437be01a8018e67f71d97c5a627e6bdfd9d4f29"

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

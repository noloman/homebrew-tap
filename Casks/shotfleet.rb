cask "shotfleet" do
  version "0.1.12"
  sha256 "68bef27b9812529dba2177ac2710ba408b7b14f9bc423bca30faef2fa45fa552"

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

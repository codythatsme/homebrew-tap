cask "cc" do
  version "0.44.1"
  sha256 "06887d10100c8acea8c0236821af48c080aa1b648890e9bb72cfdc76e2cd8c19"

  url "https://github.com/codythatsme/cc/releases/download/v#{version}/cc-#{version}-arm64.zip"
  name "cc"
  desc "Agentic IDE without usage telemetry"
  homepage "https://github.com/codythatsme/cc"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "cc.app"

  zap trash: [
    "~/.cc",
    "~/Library/Application Support/cc",
    "~/Library/Caches/io.github.codythatsme.cc",
    "~/Library/Preferences/io.github.codythatsme.cc.plist",
    "~/Library/Saved Application State/io.github.codythatsme.cc.savedState",
  ]

  caveats <<~EOS
    This personal build is not Apple-notarized. If macOS blocks the first launch,
    approve cc in System Settings > Privacy & Security > Open Anyway.
    Launch with: open -a cc
  EOS
end

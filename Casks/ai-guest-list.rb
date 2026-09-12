cask "ai-guest-list" do
  version "0.8.1"
  sha256 "ad3a12eef15e0cfd0aa8aa211b5fe2967207cae1ac4e93be254a7f558be6c03a"

  url "https://github.com/fheinfling/ai-guest-list/releases/download/v#{version}/AI-Guest-List-v#{version}.zip"
  name "AI Guest List"
  desc "Auto-switches Codex/Claude accounts on usage limits and resumes your work"
  homepage "https://github.com/fheinfling/ai-guest-list"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "AI Guest List.app"

  caveats <<~EOS
    AI Guest List is not signed or notarized, so macOS Gatekeeper blocks the first
    launch. Pick one of these:

    Easiest — clear the quarantine attribute after installing:
      xattr -dr com.apple.quarantine "/Applications/AI Guest List.app"

    Or approve it in Gatekeeper:
      - macOS 15 (Sequoia) and newer: open the app once and dismiss the warning,
        then go to System Settings > Privacy & Security, scroll down, and click
        "Open Anyway". (Right-click > Open no longer bypasses Gatekeeper on 15+.)
      - macOS 14 and earlier: right-click the app in /Applications and choose
        Open, then Open again.
  EOS
end

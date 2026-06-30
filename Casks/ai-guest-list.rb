cask "ai-guest-list" do
  version "0.1.0"
  sha256 "83ad844cdbb29a9fd739a81def9b5bd673069adf363f2c67a567e54432e2c788"

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
    AI Guest List is not yet signed or notarized, so macOS Gatekeeper blocks it on first
    launch. To open it:
      - right-click the app in /Applications and choose Open, then Open again, or
      - run:  xattr -dr com.apple.quarantine "/Applications/AI Guest List.app"
  EOS
end

cask "ai-guest-list" do
  version "1.6.0"
  sha256 "6b5bb2dcc02fadd43af7b055b1c8f089889f67f8bfd10e4c4eb9195fb5a9e457"

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
end

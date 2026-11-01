cask "ai-guest-list" do
  version "1.5.1"
  sha256 "cde717a9ccc4d0a4e118287f8209f5a25d8fccc1c4e68f362754e114f3f3b85c"

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

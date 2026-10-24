cask "ai-guest-list" do
  version "1.4.1"
  sha256 "1824fafe75ee1834e95a973a8b27dd2e20360266484d821c10fc25d3171c3124"

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

cask "ai-guest-list" do
  version "1.9.1"
  sha256 "a903be3916ef4096635048ccb533c0532371b0a54a7561b49231b67d825ac14d"
  auto_updates true

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

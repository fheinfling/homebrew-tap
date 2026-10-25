cask "ai-guest-list" do
  version "1.4.2"
  sha256 "ddf1049fae9f03b8d0d374948874e4b797c9e3c00a50b1682f58f0620f4167bc"

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

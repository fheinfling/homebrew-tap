cask "ai-guest-list" do
  version "1.11.0"
  sha256 "9eacfb1d8da16aca71b99e718fabf2c8b1dce9901c4fa5cfc243acb31ef9a3ea"
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

cask "ai-guest-list" do
  version "1.10.1"
  sha256 "1a7b16ca9cc14efcbf61e00c9d77b2a54b550b1bc8692a426a0b6547f67cd570"
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

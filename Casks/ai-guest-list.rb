cask "ai-guest-list" do
  version "1.9.0"
  sha256 "b2a2f9b6c467dfed2297b3a8ca4fa63f7b8f38de9726654159f1505d0db7520d"
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

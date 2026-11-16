cask "ai-guest-list" do
  version "1.10.0"
  sha256 "38fe6a4a72576c472df277ddc22ae67afcb5ea4889da50bda6ba284713d92732"
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

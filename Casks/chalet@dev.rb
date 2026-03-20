# Chalet Homebrew Cask (WIP)
#
cask "chalet@dev" do
	version "0.8.18"
	sha256 arm: "45bf7d54a2ff2e6f1703233db28d3f1ad983f719149c289c492d7cbe3933bd3d",
	       intel: "7b0c67cd7e38b9faa5df9035bb0b31e98b81d9a822b33b792a0b96330e608154"
	arch arm: "arm64",
	     intel: "x86_64"

	url "https://github.com/chalet-org/chalet/releases/download/v#{version}/chalet-#{arch}-apple-darwin.zip"
	name "Chalet"
	desc "A cross-platform project format & build tool for C/C++"
	homepage "https://www.chalet-work.space"

	livecheck do
		url :stable
		regex(/^[\w\d-]+$/i)
	end

	auto_updates true
	depends_on macos: ">= :big_sur"

	binary "chalet"
end

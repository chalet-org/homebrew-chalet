# Chalet Homebrew Cask (WIP)
#
cask "chalet@dev" do
	version "0.8.7"
	sha256 arm: "5ed64c68d4d5b51ada55a7161f8eccca7fdd7345e19c674af8f011c0d5905184",
	       intel: "a8115416853a5dfc641858725d13e49114bf5e4d1558a48c490281a657f1026a"
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

# Chalet Homebrew Cask (WIP)
#
cask "chalet@dev" do
	version "0.8.3"
	sha256 arm: "9c4db3525fbb6df0b39b0588e76d0ea364da8539726ce8ea315025cdf7d5976e",
	       intel: "09adbce26840a65a279d239f82a759eda870cfbe01cbc55c666cebdbb65b2483"
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

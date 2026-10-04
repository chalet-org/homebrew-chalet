# Chalet Homebrew Cask (WIP)
#
cask "chalet@dev" do
	version "0.8.20"
	sha256 arm: "afe93772164a1253ed04562722417c9394ce7475bf1658254518193e3bda9335",
	       intel: "3aba24f690e0c4e39fbca068a9fbd56f44744e6e9c2737f7a3c88b34d616bcf6"
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

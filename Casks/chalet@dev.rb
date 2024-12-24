# Chalet Homebrew Cask
#
cask "chalet@dev" do
	version "snapshot-main-202412240226"
	sha256 arm: "564081c06fb68d2168439810c014e0deca9fe4350dc1c8ead44d0fb6bc839929",
	       intel: "492111200b705f77864e4a9e699b3132443f8b6614a15140274bc2f982652ada"
	arch arm: "arm64",
	     intel: "x86_64"

	url "https://github.com/chalet-org/chalet/releases/download/#{version}/chalet-#{arch}-apple-darwin.zip"
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

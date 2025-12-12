# Chalet Homebrew Cask (WIP)
#
cask "chalet@dev" do
	version "0.8.16"
	sha256 arm: "c25e46d6f65e4f479a57ce859e1176d69f907938e094c0540a6262ee38a7f868",
	       intel: "a634190e66c4b6dec21a94781e357f8de44555988da9cc3f6c99614020ca17f3"
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

# Chalet Homebrew Cask (WIP)
#
cask "chalet@dev" do
	version "0.8.10"
	sha256 arm: "40ed0733a8450a70fa8b682b64ebd00e6f134d7b348e295b10a7f7746af0dcb3",
	       intel: "c7bb1e03311db863a4fd200da115d0eb4b17cc354a49fca0e4177625ad357b35"
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

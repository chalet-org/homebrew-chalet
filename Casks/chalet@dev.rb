# Chalet Homebrew Cask (WIP)
#
cask "chalet@dev" do
	version "0.8.11"
	sha256 arm: "f306817369315a117bfd95097f34b6143c82e3f3a98a936afd3e69b5cbcba0b6",
	       intel: "81073439b2ea35cace2adaa744075ea3a6c6b58354afbc0b2ca64d97fd443d6c"
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

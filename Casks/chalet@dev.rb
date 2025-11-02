# Chalet Homebrew Cask (WIP)
#
cask "chalet@dev" do
	version "0.8.14"
	sha256 arm: "a61ea4d88eaac58bdfcefb5c61633af2a26e712e7652d2cc9308d0131145737d",
	       intel: "6f4bc9c3d6a99b39f78b271023e47274837fa6fe610ff31588860695d6171821"
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

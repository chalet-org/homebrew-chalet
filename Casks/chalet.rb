# Chalet Homebrew Cask (WIP)
#
cask "chalet" do
	version "0.8.6"
	sha256 arm: "d1ffa0e76ab1ff04fcd2e65dbaf1bfbb4679ab0a007e770870c47f0c84805694",
	       intel: "768b1725940f7d76c5d5bd36f156615d7cb724e4364359bba2ef3ea53d955816"
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

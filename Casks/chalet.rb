# Chalet Homebrew Cask (WIP)
#
cask "chalet" do
	version "0.8.1"
	sha256 arm: "978e8ce2f65cb5471b5cb26348abeaa1fceb2814cbb1eb203568409530c0f737",
	       intel: "ba030497381037f253a67ca8ce5a22a58a5d286b8d28644512892ec20c9da905"
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

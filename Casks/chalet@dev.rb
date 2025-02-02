# Chalet Homebrew Cask (WIP)
#
cask "chalet@dev" do
	version "0.8.2"
	sha256 arm: "36ef28f92895bff776acdaee08842221b6f419f1c14a09efd1376d3645941b77",
	       intel: "be431f270ebf194715134244c02f55ee275f898214959158517e058e5c95bada"
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

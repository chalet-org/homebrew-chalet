# Chalet Homebrew Cask (WIP)
#
cask "chalet" do
	version "0.8.5"
	sha256 arm: "d70da4d408aa266089b56722761b64c5bf2d560cc6b5addb876d92237ece3744",
	       intel: "3d369afa794a6b183baaf90b7ff09050f67f333c6dee74bd99611725230acbdf"
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

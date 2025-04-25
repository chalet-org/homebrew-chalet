# Chalet Homebrew Cask (WIP)
#
cask "chalet" do
	version "0.8.4"
	sha256 arm: "34b089df8b13a14f36ced50985e18a1077b8ee5bd35717c1324edb89444f3bbf",
	       intel: "3f3400b73e6f251f1848873a3a149800b86d8ccb378989de28b197628738716e"
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

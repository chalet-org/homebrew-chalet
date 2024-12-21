# Chalet Homebrew Cask
#
cask "chalet@dev" do
	version "snapshot-main-202412210242"
	sha256 arm: "dd90d1a0ac7347d53568297686ecb2df4e0318f72670fd1d707354030a811364",
	       intel: "d74b6df461aa34631b000e5380291e8bb026dc0558701a9cd7303c2a79179096"
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

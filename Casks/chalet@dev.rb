# Chalet Homebrew Cask (WIP)
#
cask "chalet@dev" do
	version "0.8.19"
	sha256 arm: "24b6ef4f09cf38d37cbfe1816d6e44864a139da3545bcfa91da7e7b5391ca5b6",
	       intel: "2b7cf23a0bad4d9dcac1d8f835ab06df874bcb0b0d8e45913d46266eb04cd805"
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

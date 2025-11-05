# Chalet Homebrew Cask (WIP)
#
cask "chalet" do
	version "0.8.15"
	sha256 arm: "0ad163d501c2e17fdcca4660db71f69f02d20da48e5d007256d7c03c98a76d09",
	       intel: "df8becaf7eeab06b4ba01a88e04b8bfc5980bd196f05a55d57c44e4b47541aee"
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

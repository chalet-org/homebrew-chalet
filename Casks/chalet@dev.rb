# Chalet Homebrew Cask (WIP)
#
cask "chalet@dev" do
	version "0.8.17"
	sha256 arm: "db6953df3c1678f07a2573a7757d9208a489008558b1442531f293723328512d",
	       intel: "7821ff81a2ce2ad8add4a33ad22926dcc56ea293e2d0c00fa1fdb8a47931da18"
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

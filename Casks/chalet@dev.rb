# Chalet Homebrew Cask
#
cask "chalet@dev" do
	version "snapshot-main-202410131745"
	sha256 arm: "c18d1417f6414585f1e68e39238ed5812cc4b08c85c750287c9ef06c4d1003bb",
	       intel: "824c5c653c919d9b19eaa19302e0c0a4dffb00b86f2750bfaf8ecca6fa8cbd76"
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

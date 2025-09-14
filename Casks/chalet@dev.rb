# Chalet Homebrew Cask (WIP)
#
cask "chalet@dev" do
	version "0.8.12"
	sha256 arm: "681f55607bf1ba7a2c52696cf18cb061105ff960ab35583e00c4c674dd1ca727",
	       intel: "1d42e22f0baa4d366ec22d448713ce88caf412ad4275c0c06ad0977be3e8c83b"
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

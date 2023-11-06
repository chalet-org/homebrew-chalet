# Chalet Homebrew Cask (WIP)
#
cask "chalet" do
	version "${version}"
	sha256 arm: "${sha_arm}",
	       intel: "${sha_x86}"
	arch arm: "arm64",
	     intel: "x86_64"

	url "https://github.com/chalet-org/chalet/releases/download/v#{version}/chalet-#{arch}-apple-darwin.zip"
	name "Chalet"
	desc "A cross-platform project format & build tool for C/C++"
	homepage "https://www.chalet-work.space"

	livecheck do
		url :stable
		regex(/^v?(\d+(?:\.\d+)+)$/i)
	end

	auto_updates true
	depends_on macos: ">= :big_sur"

	binary "chalet"
end

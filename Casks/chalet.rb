# Chalet Homebrew Cask (WIP)
#
cask "chalet" do
	version "0.8.13"
	sha256 arm: "235c4c513b5b12ed6cbd7056687c46e61a8a449095a8de3bcbca74d1ac33a813",
	       intel: "f575792ddd2ad098964b5ce57315138ffdf8e8ce85f0f0165d3103cf46879493"
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

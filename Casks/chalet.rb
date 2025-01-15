# Chalet Homebrew Cask (WIP)
#
cask "chalet" do
	version "0.8.0"
	sha256 arm: "ad2119fa32c764b8cde78c30d8ccab3d2ed995f8cbd8125d7a61c48f474067d8",
	       intel: "bd6a336a6a519372fe55cee79f787e356748d42fc5faa2fe71b0d9f86b0b5fa1"
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

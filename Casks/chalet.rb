# Chalet Homebrew Cask (WIP)
#
cask "chalet" do
	version "0.8.8"
	sha256 arm: "d3bda5d898c298d55b206e64fd49f8649d4cacfeeba89b4118277ead0f1d79a5",
	       intel: "8d707c6821313eb30127e844d3da40e49e05828ae6ca8bb6b8074916862d09b5"
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

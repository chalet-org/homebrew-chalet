# Chalet Homebrew Cask (WIP)
#
cask "chalet" do
	version "0.8.9"
	sha256 arm: "4ecc59b38712b97a468bca9f651eb6c2af4ca487e541eb9934e53e95a096b479",
	       intel: "0fefcaebe5381f58fefc09d9d11197350e5402f33938193f8ca0fc09523cd2f5"
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

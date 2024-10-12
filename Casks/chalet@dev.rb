# Chalet Homebrew Cask
#
cask "chalet" do
	version "snapshot-main-202410120135"
	sha256 arm: "c09e95fd409a36727c92f01c9ae2b4e4afb5635ee18a0d5f55e114f05f6d0aa8",
	       intel: "3e66ec8323e0cdb917b502e54f9550f7857e5717ed929cc4d372b026440979cd"
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

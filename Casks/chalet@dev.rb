# Chalet Homebrew Cask
#
cask "chalet@dev" do
	version "snapshot-main-202410222334"
	sha256 arm: "a47f0688fc8dc8b26244a1c153e33948c5a2781185a7e8afc9ceb2846583f251",
	       intel: "f513dfef6ae772d2e51a2b51c5a2808ca26e661a95c53c4ead9ea3b7d7d55347"
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

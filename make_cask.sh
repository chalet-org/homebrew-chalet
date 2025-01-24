#!/usr/bin/env bash

if [[ $OSTYPE != 'darwin'* ]]; then
	echo 'Error: this script must be run on macos'
	exit 1
fi

TAG=$1
CWD="$PWD"

if [[ $TAG == '' ]]; then
	echo 'Error: please provide a version # (ie. 0.0.1)'
	exit 1
fi

CHANNEL=
if [[ "$TAG" =~ ^v[0-9]\.[0-9]\.[0-9]{1,2}$ ]]; then
	CHANNEL=
else
	CHANNEL=@dev
fi

sleep 2

_get_file_from_github() {
	FILE=$1
	OUTPUT=$2

	RESULT=$(curl "https://github.com/chalet-org/chalet/releases/download/$TAG/$FILE" &>/dev/null)
	if [[ "$RESULT" == "Not Found" ]]; then
		echo "The build artifact '$FILE' for the tag '$TAG' was not found"
		exit 1
	fi

	curl -LJO "https://github.com/chalet-org/chalet/releases/download/$TAG/$FILE"
}

echo "'$TAG'"

CWD="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SCRIPT_DIR="$CWD/releases"
CASKS_DIR="$CWD/Casks"
echo "$SCRIPT_DIR"

TMP_DIR="$SCRIPT_DIR/cask_temp"

mkdir $TMP_DIR
cd "$TMP_DIR"

FILE_ARM64="chalet-arm64-apple-darwin.zip"
FILE_X86="chalet-x86_64-apple-darwin.zip"

_get_file_from_github "$FILE_ARM64"
_get_file_from_github "$FILE_X86"

SHA_ARM64=$(shasum -a 256 "$FILE_ARM64" | cut -d ' ' -f1)
SHA_X86=$(shasum -a 256 "$FILE_X86" | cut -d ' ' -f1)

echo "'$SHA_ARM64'"
echo "'$SHA_X86'"

generate_for_channel() {
	CHAN="$1"
	VPREFIX="$2"
	OUTPUT_FILE="$CASKS_DIR/chalet$CHAN.rb"

	cat > "$OUTPUT_FILE" << END
# Chalet Homebrew Cask (WIP)
#
cask "chalet$CHAN" do
	version "${TAG//v}"
	sha256 arm: "${SHA_ARM64}",
	       intel: "${SHA_X86}"
	arch arm: "arm64",
	     intel: "x86_64"

	url "https://github.com/chalet-org/chalet/releases/download/${VPREFIX}#{version}/chalet-#{arch}-apple-darwin.zip"
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
END
}

if [[ "$CHANNEL" == "" ]]; then
	generate_for_channel "" "v"
	generate_for_channel "@dev" "v"

	cat > "$SCRIPT_DIR/$TAG.csv" << END
arm64,$SHA_ARM64
x86_64,$SHA_X86
END

else
	generate_for_channel "$CHANNEL" ""
fi

rm -rf "$TMP_DIR"

exit 0
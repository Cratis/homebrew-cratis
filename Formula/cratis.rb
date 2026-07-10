class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.0.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.0.1/cratis-2.0.1-osx-arm64.tar.gz"
      sha256 "5c0f54b94d954dacbc497aaf3127f11c96eb46d7e84508d892f16c499e68005a"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.0.1/cratis-2.0.1-osx-x64.tar.gz"
      sha256 "2734434065c47b4916b4a810996bef3563b01d7846a8b37426167ea4ce6066ca"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.0.1/cratis-2.0.1-linux-arm64.tar.gz"
      sha256 "9acf98624afee2a611c3d2a3484af09f4a66ae8c3f48a6bdd82980ab2ce3be6b"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.0.1/cratis-2.0.1-linux-x64.tar.gz"
      sha256 "59f8899c15f6b4bfe62491d2d61d9de0722ce0e034bc407f8626c23725841d43"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

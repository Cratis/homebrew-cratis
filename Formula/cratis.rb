class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.8.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.8.1/cratis-2.8.1-osx-arm64.tar.gz"
      sha256 "ef79cf199b40f49871744cdbdffb57467b6985a356dea168aed10addf6633080"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.8.1/cratis-2.8.1-osx-x64.tar.gz"
      sha256 "0c9a84bca9ee6bc58145477fe4cb11a036c441e02b7dd63a5da273b32433e3e2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.8.1/cratis-2.8.1-linux-arm64.tar.gz"
      sha256 "71a0514712f83291bfcbaf91cff6daeeaaedcfd9d967f16af469b8b5403a7a1a"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.8.1/cratis-2.8.1-linux-x64.tar.gz"
      sha256 "9647d709a998b8205956235cae76344dc4883d30e8bd16eb0f3d8bd940793988"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

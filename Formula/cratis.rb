class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.67.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.67.0/cratis-3.67.0-osx-arm64.tar.gz"
      sha256 "719df360b807df47d2fc5199e4ed1dc71eb306433adba3ef72fee0bfc183517b"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.67.0/cratis-3.67.0-osx-x64.tar.gz"
      sha256 "21eba6a89301136ab1bf9d02cfdbaed5c6fb82872e19bc377a3a2787f12bb4dd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.67.0/cratis-3.67.0-linux-arm64.tar.gz"
      sha256 "43f4c4c26299befd29cdfbca7044db4dc165270f27ddb513a4cee0f7af3564e5"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.67.0/cratis-3.67.0-linux-x64.tar.gz"
      sha256 "50e5e249f98875f4fb5b888d8798de5d46faf3e3a9cd79c0aeeec2f1028c5522"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

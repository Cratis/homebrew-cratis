class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.30.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.30.0/cratis-3.30.0-osx-arm64.tar.gz"
      sha256 "5598ce990854de4a1e647a6465b937d26b22eda6bf9f96ab04daa20748507851"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.30.0/cratis-3.30.0-osx-x64.tar.gz"
      sha256 "ad91977cd98e67bf9fa563c3ac080dd174e81ef0cb1a32cf12dc708646c6ec33"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.30.0/cratis-3.30.0-linux-arm64.tar.gz"
      sha256 "ceb02104b8d6e6986724ec9bbed0d5eaa57d69ed864b8aafa5b11fbcc17dc479"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.30.0/cratis-3.30.0-linux-x64.tar.gz"
      sha256 "d344369734d0131866c42f57a745e369b18346c79cf7a34556ec740accefb8d0"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

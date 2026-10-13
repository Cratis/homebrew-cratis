class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.59.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.59.1/cratis-3.59.1-osx-arm64.tar.gz"
      sha256 "5062d4eae4ded7bd88378dfdc19fc1d577295da0e0b1837794c05777b9b6463b"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.59.1/cratis-3.59.1-osx-x64.tar.gz"
      sha256 "5e82767f8a8476176f0eb041e9e7ec7a4d8a6af396c23e3df458c5d3fa8c26cd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.59.1/cratis-3.59.1-linux-arm64.tar.gz"
      sha256 "fa1b1861b9d38dc714650c6fb7b39f926815223cf17327c09312bd8ab0cc242c"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.59.1/cratis-3.59.1-linux-x64.tar.gz"
      sha256 "519d5e49f67d7235ffa12b9f065732e04a6379ed61a39fb37183245161b594a6"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

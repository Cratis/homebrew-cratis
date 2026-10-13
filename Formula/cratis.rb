class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.57.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.57.0/cratis-3.57.0-osx-arm64.tar.gz"
      sha256 "f45ce4ca0ac2a80bc15af8ab01f63fac041a8939db69e3ff35a9636084208cbd"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.57.0/cratis-3.57.0-osx-x64.tar.gz"
      sha256 "3fae846dd021138de9487d559567ab21c819a751841e206a996994f9b784db21"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.57.0/cratis-3.57.0-linux-arm64.tar.gz"
      sha256 "85a20e98c7cd4734ae90dff0f3de345624bb335355c07c567d8a39006e597e9f"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.57.0/cratis-3.57.0-linux-x64.tar.gz"
      sha256 "ea0f174d48aca3b9a919943a158379879fb5dcecedccebfaf0fc18f9da3afd06"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

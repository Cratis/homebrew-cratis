class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.100.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.100.0/cratis-3.100.0-osx-arm64.tar.gz"
      sha256 "0b2b56c1206ac6b28ec96b9bb03869cec5431038f4637ec11253b28326a822ed"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.100.0/cratis-3.100.0-osx-x64.tar.gz"
      sha256 "de932bdd8ba292bbba30e28c1ae410b1560b68e3a9d1648b5d1ee63f5830b0de"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.100.0/cratis-3.100.0-linux-arm64.tar.gz"
      sha256 "40c1a0fde4b5e9db061c49ef9e38c296286e18e048a04b792b16e10e9591e8c8"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.100.0/cratis-3.100.0-linux-x64.tar.gz"
      sha256 "11ca72dc23a8abb2db386e0d258acbafec85289dc84312b3693f3c7e4972077b"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

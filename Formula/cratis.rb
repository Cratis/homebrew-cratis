class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.99.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.99.0/cratis-3.99.0-osx-arm64.tar.gz"
      sha256 "84812bc7ffd946178e69136726aed677bc20957f6a170d27af11befce4075209"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.99.0/cratis-3.99.0-osx-x64.tar.gz"
      sha256 "45fe96e13b521eb2cb7104f3d0952ac6a577f104ee333f9ebd5bea0f1d14d973"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.99.0/cratis-3.99.0-linux-arm64.tar.gz"
      sha256 "718710b17d0dd7cf530e3695cf6af273e4c0229ccf1277e75d7479fdb8c88901"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.99.0/cratis-3.99.0-linux-x64.tar.gz"
      sha256 "10cd0a3cfee89a0d57c1e07b8a79e836596fa914ec7acc7b82cbf9ee68b5c119"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

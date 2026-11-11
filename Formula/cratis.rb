class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.128.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.128.0/cratis-3.128.0-osx-arm64.tar.gz"
      sha256 "287a61dfc6f136d93888760d7cbf4d6a98cc7b1716ecf46e216ac261ae2775c7"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.128.0/cratis-3.128.0-osx-x64.tar.gz"
      sha256 "c74eb02ce766115095b96e8f1e2a9579faa5b22ee9661e8b9265412c98cb1c37"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.128.0/cratis-3.128.0-linux-arm64.tar.gz"
      sha256 "546ce2727226a4102a712c96481f61a1f33171ecac9a1c03d318c9c21c5df24b"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.128.0/cratis-3.128.0-linux-x64.tar.gz"
      sha256 "bc9dd802e163de60211332a7e76cdd5d97a3ca366af1eddbeec3f82681152ecc"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

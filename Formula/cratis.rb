class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.1.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.1.1/cratis-3.1.1-osx-arm64.tar.gz"
      sha256 "468b512be7ab43d37f844a8150053c9b27ac10c541b986653508c5462c54305d"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.1.1/cratis-3.1.1-osx-x64.tar.gz"
      sha256 "d7e0a489611b0c6f3fe72e060030f167e4e85dde13ea768aab4924d809b3eca3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.1.1/cratis-3.1.1-linux-arm64.tar.gz"
      sha256 "3fc53d18f4d6b562fc3b6794bb917b5a3271e2d99b74a6da7a58341ef32aa9c6"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.1.1/cratis-3.1.1-linux-x64.tar.gz"
      sha256 "f11fb3ac32310932e2b429561d6c43b465f374d64b4e3b7c2aa4dc6fe52d6678"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.42.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.42.0/cratis-3.42.0-osx-arm64.tar.gz"
      sha256 "06b26efd9ed38aac6e06db3258a0a221812e5bea163c87e4d50914676a367b28"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.42.0/cratis-3.42.0-osx-x64.tar.gz"
      sha256 "105dbde58f13e5bf4735090e507674172fdff25002e186aeeebf0fd42f30c420"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.42.0/cratis-3.42.0-linux-arm64.tar.gz"
      sha256 "d1e40ae3fdab5c6b4e40900fed3f7b4bca5c95d65dcbd8678a174445f3804323"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.42.0/cratis-3.42.0-linux-x64.tar.gz"
      sha256 "8d807e8cf3056d69d589b0a8e10289c4c48eac9f54671f2c4cd4ea17bdc8dbbd"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

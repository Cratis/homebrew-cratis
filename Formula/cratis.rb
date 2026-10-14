class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.61.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.61.0/cratis-3.61.0-osx-arm64.tar.gz"
      sha256 "58c77234ad7195cf4ac1e5e0af8f7fbbd6f61de7b1c7038ccb52e4396dcc3f01"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.61.0/cratis-3.61.0-osx-x64.tar.gz"
      sha256 "4a17364db75ebbb3df6be1bd2e6b8d5944865118433d4479a70c8079f93d866d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.61.0/cratis-3.61.0-linux-arm64.tar.gz"
      sha256 "09bf7a051673be01b2a450853ab977f2dc409fe637a5532c1606f8d3fd8b3e6c"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.61.0/cratis-3.61.0-linux-x64.tar.gz"
      sha256 "b1f0154ed83000eda427e02ebcbc2ede4a79c93d988d26c742be1cb895ae1cfb"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

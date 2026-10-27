class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.103.6"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.103.6/cratis-3.103.6-osx-arm64.tar.gz"
      sha256 "de04cfa93e745be6da62796c39c29119f7e51824a7948e012c5ec7b53c08589a"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.103.6/cratis-3.103.6-osx-x64.tar.gz"
      sha256 "08c794281bfdf4b8d6c69447656a8677917b962c6b92a2badcac59f44fa27680"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.103.6/cratis-3.103.6-linux-arm64.tar.gz"
      sha256 "75d8ab0fcea4d7b9a2b935651a61006aa6c71a1ae8cd09630d8e3668f418bfe9"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.103.6/cratis-3.103.6-linux-x64.tar.gz"
      sha256 "01f2540196cf1346f03d058b2311cc89d9acba72d3e4c38bf9e5537b27ec3f13"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

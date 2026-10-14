class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.64.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.64.0/cratis-3.64.0-osx-arm64.tar.gz"
      sha256 "7cfccb1ba83a7a9f11e28f7856c086f870257a907557f54051218d1bab605bbf"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.64.0/cratis-3.64.0-osx-x64.tar.gz"
      sha256 "396ee1543b4f3a9b92eab86f700737023669abbf459f297a84a3531a7c857efc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.64.0/cratis-3.64.0-linux-arm64.tar.gz"
      sha256 "154dd34685165d228c35603caaa76d6d789f875e21d36bc6499a41da72d04548"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.64.0/cratis-3.64.0-linux-x64.tar.gz"
      sha256 "88658fe9775055b5d0368cec6a18bf5d3aa98f7b5f713b1d2b5758014cf50e04"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

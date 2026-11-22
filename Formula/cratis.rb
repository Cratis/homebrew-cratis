class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.143.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.143.0/cratis-3.143.0-osx-arm64.tar.gz"
      sha256 "1630455c12ecfb8c8587555d25609465f0bf0de9350d558702051d407c14021d"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.143.0/cratis-3.143.0-osx-x64.tar.gz"
      sha256 "f0921876dcd4a0df25c00a220fd0ec734926310ac0f3ed005d1407e83109e4a8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.143.0/cratis-3.143.0-linux-arm64.tar.gz"
      sha256 "aa7554b37d86e265105613f141e6b44d89d0ab2b96f0eba0c9f4b0f0d543d74e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.143.0/cratis-3.143.0-linux-x64.tar.gz"
      sha256 "683657e681fd2f21b9947bc1f34befadc79b56ca71f056d4014b146cffbce7b9"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.144.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.144.0/cratis-3.144.0-osx-arm64.tar.gz"
      sha256 "aeb797595fa471629f504c11c52e2fff69602e27f41a2ee8b485a6a9428918a4"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.144.0/cratis-3.144.0-osx-x64.tar.gz"
      sha256 "785aa118eb242ca6a6bec393a25efe26e946c6ba62987371452e8453bdc44eb1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.144.0/cratis-3.144.0-linux-arm64.tar.gz"
      sha256 "886efabcc77aa66d49fc9ba47a7ad40baef3ef4748c9f860d2e047200e40e09e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.144.0/cratis-3.144.0-linux-x64.tar.gz"
      sha256 "0259788a32010de11add01e5ed97118a39b6ad6eeb13d36a549960d0ddfedc75"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

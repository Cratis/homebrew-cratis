class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.150.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.150.2/cratis-3.150.2-osx-arm64.tar.gz"
      sha256 "211a0e3a973b3320d86a0613e6424cd29642a0124c69b8c37a349efd6deb1710"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.150.2/cratis-3.150.2-osx-x64.tar.gz"
      sha256 "e39ce923318e308c38cf670de4c1750551fa91bf5954c2cda07c9942afd11ad0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.150.2/cratis-3.150.2-linux-arm64.tar.gz"
      sha256 "caef90dab3cdeb45c1e5d76f7e94500f64c7b9fbc39190f2f75ba2a3441c4191"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.150.2/cratis-3.150.2-linux-x64.tar.gz"
      sha256 "db588d587beef987431a6025651bf9500fa99713d2eb09a0c59b7712470b8837"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

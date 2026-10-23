class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.95.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.95.0/cratis-3.95.0-osx-arm64.tar.gz"
      sha256 "a394cd4e963ed3497d45d9db87d286cc7dc22606c954c153996bef2c13de4087"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.95.0/cratis-3.95.0-osx-x64.tar.gz"
      sha256 "5e1820cac9fa190af12e2c5816fb13d847119048ba741245bff4d240bc48e4d8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.95.0/cratis-3.95.0-linux-arm64.tar.gz"
      sha256 "5b1a8ab4e84402fcc8f03fa0435800f9ff687c9db3c43a7b148cc43eba07c1c4"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.95.0/cratis-3.95.0-linux-x64.tar.gz"
      sha256 "725c6779ff7532952eb50e8b03925282e6327b5440f089c179a025896880ed55"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

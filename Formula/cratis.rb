class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.70.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.70.0/cratis-3.70.0-osx-arm64.tar.gz"
      sha256 "ab67b9f2ed7327d2dd35a68c5ebdbe21be6f1bff6ef54274bc4ff6178ae8aa86"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.70.0/cratis-3.70.0-osx-x64.tar.gz"
      sha256 "10c390ea63a149048e1eeffdab4ebfab7f188681eb1557fef8df524f63b7003d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.70.0/cratis-3.70.0-linux-arm64.tar.gz"
      sha256 "41f624d10c9c47bfad41390db341458cee1629b6b3af04fe6bb3c768cc1ca0fe"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.70.0/cratis-3.70.0-linux-x64.tar.gz"
      sha256 "212ab0d85c1cc2fafc6c72310e34ce86ec788fc019408bda8cfaf24169e26b38"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

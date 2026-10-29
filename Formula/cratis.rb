class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.110.3"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.110.3/cratis-3.110.3-osx-arm64.tar.gz"
      sha256 "9b0eef415761327d69a2adda332625b82075faf4c520bec82ea901f8d600648f"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.110.3/cratis-3.110.3-osx-x64.tar.gz"
      sha256 "0db3eeb19fbce809136c50cbb59d6cab5405c20b79a0e0bd3b57656d756f3407"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.110.3/cratis-3.110.3-linux-arm64.tar.gz"
      sha256 "18a51ed6d5546161502771cfe82136372a22bd1e851396e30b4a13c1757e9edd"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.110.3/cratis-3.110.3-linux-x64.tar.gz"
      sha256 "1b5954d1bfcc3f1046f67bfad8cfd99dc852b8157057d8383bad74b75ac8d51e"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

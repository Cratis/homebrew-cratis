class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.28.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.28.1/cratis-3.28.1-osx-arm64.tar.gz"
      sha256 "be0ea513c15f3cc03c7057f4d713c062a3c1622c253843de06ab87d50d480863"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.28.1/cratis-3.28.1-osx-x64.tar.gz"
      sha256 "0c7ea124c420d8980914549e19d4524c0be31182e545b69669bab223f1327191"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.28.1/cratis-3.28.1-linux-arm64.tar.gz"
      sha256 "58042abd9114e15ee0acde1713f53576e277e17891340f4ca21c46881eb34e87"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.28.1/cratis-3.28.1-linux-x64.tar.gz"
      sha256 "a02ac226437c6e174dd09367b702e9ec9ccaf251bda4db423f8e8af53902a706"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

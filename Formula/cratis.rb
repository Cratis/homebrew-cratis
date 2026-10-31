class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.113.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.113.0/cratis-3.113.0-osx-arm64.tar.gz"
      sha256 "95ef74e7b0be53abe27256f9494af6fc22689f104613da900818938405fbb633"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.113.0/cratis-3.113.0-osx-x64.tar.gz"
      sha256 "8081a51b1fb67f09fbbb68ff780e5c96a36fb0cb5fc24c8a89ada8433d8b748a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.113.0/cratis-3.113.0-linux-arm64.tar.gz"
      sha256 "845501104759b795fc76e7888c837507fd338cc8223f15c33c56bbb349074e19"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.113.0/cratis-3.113.0-linux-x64.tar.gz"
      sha256 "e6af7c2f84396e2463e41ca2711f2b3ba32c8d4d4ad8962be9e4714ab40432a3"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

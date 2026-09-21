class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.9.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.9.0/cratis-3.9.0-osx-arm64.tar.gz"
      sha256 "2f4e43049fe859d86dd4576801ec454b342b9d97f28ac3c432aa33f8ed3f7d7d"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.9.0/cratis-3.9.0-osx-x64.tar.gz"
      sha256 "dcb49940ad1f300559b16f562d893fb5a2bf6c6cad120c2077c8564ba08f6fa7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.9.0/cratis-3.9.0-linux-arm64.tar.gz"
      sha256 "f9e0d11562e496838ff4e6ccb16cfe0d186081c609834e3644e8bc731078fed4"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.9.0/cratis-3.9.0-linux-x64.tar.gz"
      sha256 "70774960a6b1b686a09eb3657d02d128b365c2290d8d8c2403d5b183763f74ad"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

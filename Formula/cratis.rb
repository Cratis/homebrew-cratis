class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.139.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.139.1/cratis-3.139.1-osx-arm64.tar.gz"
      sha256 "910ff348abed05c61b8042ec4d3fa5cada24303e7d2f31a3d6572c6f39f24725"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.139.1/cratis-3.139.1-osx-x64.tar.gz"
      sha256 "de505a0f98dbced6a68c92d4929a18dd1dc26dc6d038a76dcdaa82838c7b7715"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.139.1/cratis-3.139.1-linux-arm64.tar.gz"
      sha256 "c3a89626b7544dd4064761c94d50020ca3e302df3ee98ae066acad9a74a027c9"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.139.1/cratis-3.139.1-linux-x64.tar.gz"
      sha256 "eab9c1b6387e4e5b0944143dc3a4b4d6f7d2adfc47d591c36eecd903ded1d821"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

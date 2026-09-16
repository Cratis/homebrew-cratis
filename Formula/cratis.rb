class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.2.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.2.0/cratis-3.2.0-osx-arm64.tar.gz"
      sha256 "877d2b9b3c0746854f5342c3e29da9b1c2a321c93848c5e966955bd435bb5b68"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.2.0/cratis-3.2.0-osx-x64.tar.gz"
      sha256 "6c1dc4aaa461f512b5f58aa2f94e8b317e160d735e9cbad63e525531545f3934"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.2.0/cratis-3.2.0-linux-arm64.tar.gz"
      sha256 "d8cb1e818122bcdb5d786296145f371c561210623f456e7e7d926b11bb68c4fa"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.2.0/cratis-3.2.0-linux-x64.tar.gz"
      sha256 "a6ed7e1679b6406f2b0952131cf67a00b68ac6360f6cf96eb1124729e8ff2eee"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

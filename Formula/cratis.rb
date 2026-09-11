class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.1.3"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.1.3/cratis-3.1.3-osx-arm64.tar.gz"
      sha256 "613f9847077fded99e4f25e0901d85288c73d1eab45901af327277cb1f699005"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.1.3/cratis-3.1.3-osx-x64.tar.gz"
      sha256 "b4c6911774bc785b0dddb36d48bce60a00c5a6803d6ef0022b02310c3b91581c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.1.3/cratis-3.1.3-linux-arm64.tar.gz"
      sha256 "b8bd8633e07ffa4440cefa1de05450787dec8e38958ef926fde35ad5f20a0a14"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.1.3/cratis-3.1.3-linux-x64.tar.gz"
      sha256 "71fb6ff16ade6511aead422de3cebafaf3302013233f84f2108ace388f4f5036"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

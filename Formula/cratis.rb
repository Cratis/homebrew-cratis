class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.81.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.81.0/cratis-3.81.0-osx-arm64.tar.gz"
      sha256 "3902d760475561b348c8aaecc530002a59177a5855dda0f93bd205dd00d3cc6e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.81.0/cratis-3.81.0-osx-x64.tar.gz"
      sha256 "8151b259fb99b00145f60f55994dedd2be84a91cec877d4652b2fd391c765900"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.81.0/cratis-3.81.0-linux-arm64.tar.gz"
      sha256 "27a41a772f0bf30b513ced64260c476dea7c1ef818d52fec49a497d34f8b34ba"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.81.0/cratis-3.81.0-linux-x64.tar.gz"
      sha256 "714934009726fd1958680e4039d3edc2f61022d92484fd677f4b8be588451c59"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.28.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.28.2/cratis-3.28.2-osx-arm64.tar.gz"
      sha256 "04c7fbe17de6ff0c61827453e5c5dc680c4f6a7bddc0304ac7561297fe00c5fb"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.28.2/cratis-3.28.2-osx-x64.tar.gz"
      sha256 "4b5645245822b7fed63355f0fad2ea06e9e54708879f1a4d4320a2b028e02195"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.28.2/cratis-3.28.2-linux-arm64.tar.gz"
      sha256 "d45128b379e813d5db67ef8edab792fc0a45b7bebe098ecabf58c2b1dce10bbb"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.28.2/cratis-3.28.2-linux-x64.tar.gz"
      sha256 "5ad193a737967af0b40fb569eaa8817fd8b5553737cd839517ee4fd28a130b16"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

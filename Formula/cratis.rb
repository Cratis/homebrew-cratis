class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.149.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.149.0/cratis-3.149.0-osx-arm64.tar.gz"
      sha256 "3ce16868be4a5a06b25ccaf65d7213e4acd466bce84549392484ec8703badc35"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.149.0/cratis-3.149.0-osx-x64.tar.gz"
      sha256 "4da7562782ade4ec826e5c1c64f6c903c513abbad80507d1d08840187259545e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.149.0/cratis-3.149.0-linux-arm64.tar.gz"
      sha256 "5b841b11a4141f78cde7866b2654078820faf15dd01220f4e248252ff7261259"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.149.0/cratis-3.149.0-linux-x64.tar.gz"
      sha256 "2518aef8df9503471e909fb9d1c191788c838e8964c3f1e1760fbe4699e2abde"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

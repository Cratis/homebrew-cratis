class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.112.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.112.0/cratis-3.112.0-osx-arm64.tar.gz"
      sha256 "053b6db7f88f18395250d47f6a2b19305b89138f88352164066109a4918eb257"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.112.0/cratis-3.112.0-osx-x64.tar.gz"
      sha256 "536ac640c8c201fd5f88db9acff9e3b321652f517151fb46f5bd5aec33158add"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.112.0/cratis-3.112.0-linux-arm64.tar.gz"
      sha256 "74332149fd4153eebc4c4542f94512d8f788b1de255a702029533b509f6a82dd"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.112.0/cratis-3.112.0-linux-x64.tar.gz"
      sha256 "e066232afc375948a5a552e757c6d6cc9e2dee2eed4ce13440045f29593d601c"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

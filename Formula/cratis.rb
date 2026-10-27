class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.104.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.104.1/cratis-3.104.1-osx-arm64.tar.gz"
      sha256 "eac037e188f809f6857a52d33a84e9cd7d0fc50d67904f65bd217388bb82c812"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.104.1/cratis-3.104.1-osx-x64.tar.gz"
      sha256 "2aa1224d21d362979eb73c456be9c8a3b9c29a2b038f9bdfa97ea3e9ffdffe3e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.104.1/cratis-3.104.1-linux-arm64.tar.gz"
      sha256 "8e4af21ce93ef5e93c4786a11eb8a85c8d9958cc9831c8937c2790cdfa946277"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.104.1/cratis-3.104.1-linux-x64.tar.gz"
      sha256 "ec9803593d3db2395fbca6b0985ec0dbe13633052fa14d20764c10ebca84ba49"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.4.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.4.2/cratis-3.4.2-osx-arm64.tar.gz"
      sha256 "de0fbfd709d665ac2988bf04ff3571f133a34ac1d126b1b315d6d7632ec0dc2c"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.4.2/cratis-3.4.2-osx-x64.tar.gz"
      sha256 "941541ddc005de50bc8e02e271c50bcd00920220f9a9710efc87821f67d075ce"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.4.2/cratis-3.4.2-linux-arm64.tar.gz"
      sha256 "56765764e432f0b25c8ee47d04728f9abd50ebc63ca48247e339cab4e9b1eb6e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.4.2/cratis-3.4.2-linux-x64.tar.gz"
      sha256 "0c24e99df0b13487c30637a7192b2e6389056d38c2a69967afa2cc3b9a9007b3"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

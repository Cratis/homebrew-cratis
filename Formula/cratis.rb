class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.16.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.16.0/cratis-2.16.0-osx-arm64.tar.gz"
      sha256 "782d26dce00f78f9db00f07763a0b53c700b67ef9319a7b104f25c1a49b96c3e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.16.0/cratis-2.16.0-osx-x64.tar.gz"
      sha256 "a0f85b66d823d51a5edc7fe54e38d82332c4e8fc656fb13c26a18a6d8f6a5c81"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.16.0/cratis-2.16.0-linux-arm64.tar.gz"
      sha256 "edc90eb31c7d6399af191118b2c28ff897746a8283cc8f0291bbf748f1fe5d8f"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.16.0/cratis-2.16.0-linux-x64.tar.gz"
      sha256 "d0b44af96a0703be1e5046e2e6c545a561342521fe49b9dc9d97e506a0296704"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

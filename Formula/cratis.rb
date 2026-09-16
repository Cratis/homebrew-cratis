class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.3.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.3.0/cratis-3.3.0-osx-arm64.tar.gz"
      sha256 "fa3c5594e1ac7e1a043e49e58d804e10267e059c69ce86b6f289d30c430108ab"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.3.0/cratis-3.3.0-osx-x64.tar.gz"
      sha256 "e29c2fa0656c52c359067cd4d70179225a120014f78df88c367d32d5e82a783b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.3.0/cratis-3.3.0-linux-arm64.tar.gz"
      sha256 "dee6cc5a5c7729bbad70f7d1b6b574bc56947bdfb180ef5278299a6cbf460b61"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.3.0/cratis-3.3.0-linux-x64.tar.gz"
      sha256 "fc955ac45e618017e65034629464a346ea181e6d9185f2652ba1a3a15e93c9a3"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

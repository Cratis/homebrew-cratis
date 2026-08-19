class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.10.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.10.0/cratis-2.10.0-osx-arm64.tar.gz"
      sha256 "925f8f078d0d33c6e195847342bf97fcda153db6d7134a2fd4b9e2b5b68fa2cc"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.10.0/cratis-2.10.0-osx-x64.tar.gz"
      sha256 "8d9a7a961035505f4c5ebacf7159673bfd07b496719c3ee1f97a584438f07bd8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.10.0/cratis-2.10.0-linux-arm64.tar.gz"
      sha256 "befd73534a2058f4f8b53c3683b4306683dd59f7282ed05686866d295330f389"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.10.0/cratis-2.10.0-linux-x64.tar.gz"
      sha256 "4236d6374f588cc65c34e2412e4161ff3fce90f2cb78ebb9ffc6a6a726988f75"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

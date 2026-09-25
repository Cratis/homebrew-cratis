class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.20.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.20.0/cratis-3.20.0-osx-arm64.tar.gz"
      sha256 "a4bcfc9b75c7aecdc942e1318eb8eaebb00b5128c046bffd49268e55b0857af0"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.20.0/cratis-3.20.0-osx-x64.tar.gz"
      sha256 "2111fae2d9d77a42fa31ddff6332b2b50632ae44ac0f20ced5aebe9ab14079c2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.20.0/cratis-3.20.0-linux-arm64.tar.gz"
      sha256 "a76d388a4374394b5a19d18d56e4bd867e23cc6340e25e38025b717bd9a5fdf4"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.20.0/cratis-3.20.0-linux-x64.tar.gz"
      sha256 "6ec9a32dfff8946323bcfd81d219669031776dcb8ce6264d3ba7c5ec8c01ce25"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

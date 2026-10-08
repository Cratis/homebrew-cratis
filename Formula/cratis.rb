class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.38.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.38.0/cratis-3.38.0-osx-arm64.tar.gz"
      sha256 "5872aca6975633ed10bae549682791b3ed030ab7e17425d4134133dc5a603d75"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.38.0/cratis-3.38.0-osx-x64.tar.gz"
      sha256 "7b19cca4cd1d26ae6c726b4e4181f5915dc8ee2fd674adebde8d837696d5d78c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.38.0/cratis-3.38.0-linux-arm64.tar.gz"
      sha256 "4e3a47b7e520949f6563f034f3c4035ef2cf61dfac9a1f0cf0998f631dffa039"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.38.0/cratis-3.38.0-linux-x64.tar.gz"
      sha256 "854ed302f026c29477b25745e479b8cbf19556872c3361da17c87384068f9cad"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

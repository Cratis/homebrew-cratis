class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.93.3"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.93.3/cratis-3.93.3-osx-arm64.tar.gz"
      sha256 "6c6d26a8c6393b0b2d4f048c4fb5a6ecb0ce95c2bb22e52a5dc43dc80dd289f5"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.93.3/cratis-3.93.3-osx-x64.tar.gz"
      sha256 "10540e047247791973821da2cbef5c647bba27cfffa417befba2603a45618201"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.93.3/cratis-3.93.3-linux-arm64.tar.gz"
      sha256 "e9909e7bed9878dd50237a506954d79b30f73477a50d76f591cab2e56150ff0d"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.93.3/cratis-3.93.3-linux-x64.tar.gz"
      sha256 "d54cc8cc41e1c3e6aa803869d45ac5f1a20ac43b32fa04eb9d88c7d73b79f179"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.102.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.102.0/cratis-3.102.0-osx-arm64.tar.gz"
      sha256 "0bf1ba44f009c9291d61edcdfde6ca9151eb245d67a39913602008933ff6c097"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.102.0/cratis-3.102.0-osx-x64.tar.gz"
      sha256 "00181efa75cf179792c45d09545421bd6a6f6f98fda50442727bf80941008b0c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.102.0/cratis-3.102.0-linux-arm64.tar.gz"
      sha256 "8b9159de7d1abfea452053b0caef577b79497cc17ef4644e95b62b8ff2ed5b53"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.102.0/cratis-3.102.0-linux-x64.tar.gz"
      sha256 "31deb65e71fec78c02cc6b4139feca4a82cad7473b14ae6185b5ec65ff277266"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

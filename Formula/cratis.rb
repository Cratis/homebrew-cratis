class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.95.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.95.1/cratis-3.95.1-osx-arm64.tar.gz"
      sha256 "81bcd276ee37f5d0ec7ac4ee4b75518c90c7e87e19ba9305288e127028645dfc"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.95.1/cratis-3.95.1-osx-x64.tar.gz"
      sha256 "0ca554bacfc588b040a23727b3be7e941d202a8adeac41ac4f17bb062338e024"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.95.1/cratis-3.95.1-linux-arm64.tar.gz"
      sha256 "8e0d69aa3bf506ff17d334318c9c18c608a057b58e8aaef5a516cd5b93d340f5"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.95.1/cratis-3.95.1-linux-x64.tar.gz"
      sha256 "a6534a7fb878d28e6ea76cc2dd9a6136943d2c6caa24c8d3396506a3b463b3ca"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

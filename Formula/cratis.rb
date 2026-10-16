class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.71.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.71.0/cratis-3.71.0-osx-arm64.tar.gz"
      sha256 "9cc4dbc0cba688d934733e8ccd0aecf1e61cdbe6adccec5835df8f37041c62f1"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.71.0/cratis-3.71.0-osx-x64.tar.gz"
      sha256 "df33cd0d63c2a6e9833198f61bef2756b6ae1300770c01d0148414c4f1bb89d2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.71.0/cratis-3.71.0-linux-arm64.tar.gz"
      sha256 "4b76b19e740d6ce8068dbf8819a01c0d46c5e960de12587a03d58c76b5efb7fc"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.71.0/cratis-3.71.0-linux-x64.tar.gz"
      sha256 "b9f5a47de9e930e644eec7828de16f743d5f20ce17c6dbda08996717dea64668"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

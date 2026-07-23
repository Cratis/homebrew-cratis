class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.2.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.2.0/cratis-2.2.0-osx-arm64.tar.gz"
      sha256 "63bce9bf8c2870f4e2dae2be826bcc3a94c66550d905b1e29ad9eeb760b98a43"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.2.0/cratis-2.2.0-osx-x64.tar.gz"
      sha256 "117fff9f09423c3535d480b903c17177bd1ee77c7ef724e33b8fa326481c1914"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.2.0/cratis-2.2.0-linux-arm64.tar.gz"
      sha256 "5fafce9d5e4fbe9794d819db6fe8cb1574d60d98afb4b8392ebfa5c5559e0b3b"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.2.0/cratis-2.2.0-linux-x64.tar.gz"
      sha256 "6944b41bde119dba2f80388bc482abb5f8318d2df3069bf83310b3ea50a4b988"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

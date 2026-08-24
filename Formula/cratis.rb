class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.17.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.17.0/cratis-2.17.0-osx-arm64.tar.gz"
      sha256 "3c7aa3acaf2d05068bee57a98d2b474ab0d501c63344074b302694031cc130d9"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.17.0/cratis-2.17.0-osx-x64.tar.gz"
      sha256 "03f4db6160846b9220147ae557a25dac766363899712d58a3aa362677ff39319"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.17.0/cratis-2.17.0-linux-arm64.tar.gz"
      sha256 "3a8bbaf80a05f8d45c34f8ace3013b9268a4d1b19dcd1e29d6c87e3f9c3726e2"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.17.0/cratis-2.17.0-linux-x64.tar.gz"
      sha256 "bf259c4b54b2d6be40c401d1e821f7f45be760bd1749cab61c3b70fc4b10918d"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

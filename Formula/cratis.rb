class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.104.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.104.0/cratis-3.104.0-osx-arm64.tar.gz"
      sha256 "8057b1b4bd15374d535ff52f1b7f8fe32fe935b32ffbe7f93c6812ca82f1607b"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.104.0/cratis-3.104.0-osx-x64.tar.gz"
      sha256 "97745e0b744bfe02d265c62391418ac6c05e69a13a71d5caa6490abfcac8d818"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.104.0/cratis-3.104.0-linux-arm64.tar.gz"
      sha256 "6a3c03cde11149d179e4345ce0accac1af5574acd0bb5028db65413822403997"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.104.0/cratis-3.104.0-linux-x64.tar.gz"
      sha256 "8a7ad6dede41a8a4ea5ce7887c696f7b98df7e224e78749bf614a5b65f64fb3d"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

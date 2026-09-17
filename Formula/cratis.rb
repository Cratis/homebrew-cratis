class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.4.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.4.0/cratis-3.4.0-osx-arm64.tar.gz"
      sha256 "f88f5435882cc4e9fe76a215c9ddf9c760674b0c139063f1bdb104a75221eebe"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.4.0/cratis-3.4.0-osx-x64.tar.gz"
      sha256 "29742f629888a323da9340cb9e3ee3833eeb95854fba5b4120fda2e57fe5bc45"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.4.0/cratis-3.4.0-linux-arm64.tar.gz"
      sha256 "4f48df9c86e47e433ca953e96a2ae3492796dc9a7d5e11d1cf23b36255deb6f8"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.4.0/cratis-3.4.0-linux-x64.tar.gz"
      sha256 "7155574aea4100de0ab69b9f2b112a0c71f8f79c0eadccccd068c23109fe161a"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

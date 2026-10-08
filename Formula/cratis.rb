class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.34.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.34.0/cratis-3.34.0-osx-arm64.tar.gz"
      sha256 "68b804457393cc93872a98b9274ff1320569b4e1551eca6be65b68c7d813ac1e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.34.0/cratis-3.34.0-osx-x64.tar.gz"
      sha256 "0cf0741a05b032650d6def70dc3be83956e629b8d2291c2a8815ce1d41d6920e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.34.0/cratis-3.34.0-linux-arm64.tar.gz"
      sha256 "03018729e440934df8fc4e17653565019d0802efc3ffa870a2ee8156af53181d"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.34.0/cratis-3.34.0-linux-x64.tar.gz"
      sha256 "440a572423089cb255e491d8ab673132d9609fab31fa27183b52f009698bdcd1"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

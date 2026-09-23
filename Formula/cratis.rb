class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.13.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.13.2/cratis-3.13.2-osx-arm64.tar.gz"
      sha256 "01ac8de466361033b62177a90f24155cf13d0e1ead471d0a340b5f8b3e949bd6"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.13.2/cratis-3.13.2-osx-x64.tar.gz"
      sha256 "0cb76e678eac1c5c9d3104a33dd2f185779cd30783e0adbbdc5c39ab158fb19e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.13.2/cratis-3.13.2-linux-arm64.tar.gz"
      sha256 "fd6481318dd251744d412bbee3aecce254ee86ac4f3f5380653e538b18503cd7"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.13.2/cratis-3.13.2-linux-x64.tar.gz"
      sha256 "07d0b1e25f99b9ebf8e287cde4da5657ef31ad734ffe2a262dd7731c61fed785"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

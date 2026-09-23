class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.15.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.15.0/cratis-3.15.0-osx-arm64.tar.gz"
      sha256 "d28485d1fdebc295888c77ca2db08ec2a55303b05d66defd43ac22b08ad8705b"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.15.0/cratis-3.15.0-osx-x64.tar.gz"
      sha256 "c6fcd4a23bf7d41ddc9822cf9e53ec363c5fd00e4943dda11fa9e859625d0227"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.15.0/cratis-3.15.0-linux-arm64.tar.gz"
      sha256 "bae643d440416134c32e5bc32f10bf61fb9712390ad705495374cb045dadf377"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.15.0/cratis-3.15.0-linux-x64.tar.gz"
      sha256 "ff8fd7178af900192065256078d4a881a41985d4c42d42eb4a1db168da960572"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

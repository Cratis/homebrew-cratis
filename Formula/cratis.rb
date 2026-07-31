class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.4.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.4.0/cratis-2.4.0-osx-arm64.tar.gz"
      sha256 "64e0c3e2a80e580d20689c53d7f78cef0d7cc9d67962bdf9aaeafc60f12469ab"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.4.0/cratis-2.4.0-osx-x64.tar.gz"
      sha256 "24b1ad1e6b2959116d86e74f710f4ff6d6f98d6f64b1234754c5ae1250e67a49"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.4.0/cratis-2.4.0-linux-arm64.tar.gz"
      sha256 "b2482e3124bad574a13e1d6149880f1b7fbc6f21c18d063fc98ff8cbbfdaf66e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.4.0/cratis-2.4.0-linux-x64.tar.gz"
      sha256 "5312d879344f2e22374bff6e0a98d6347e3325792cff87fa0f9829b4aa7bba2b"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.83.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.83.0/cratis-3.83.0-osx-arm64.tar.gz"
      sha256 "ef93ec46c7fc44e9a1b0ae547ab129ac91b2917f3619f2604dc00a14a70c450d"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.83.0/cratis-3.83.0-osx-x64.tar.gz"
      sha256 "badf5667b36706d03c4a5161e8c430b1198e8fcfe7080e09934e58436ba8975d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.83.0/cratis-3.83.0-linux-arm64.tar.gz"
      sha256 "c04654254fa32308c2d34451ec851d3fb91f8c1268a78917bcf628719f1c27bd"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.83.0/cratis-3.83.0-linux-x64.tar.gz"
      sha256 "f664a553bacea0a402e6c5fefaac4b9063692a08d05709025f1486c655e6245b"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

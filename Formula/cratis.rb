class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.10.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.10.0/cratis-3.10.0-osx-arm64.tar.gz"
      sha256 "1e4acf0504739c9581b016b6db9b438605f13a1677ad5ac02e7c2b4f17c64a40"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.10.0/cratis-3.10.0-osx-x64.tar.gz"
      sha256 "f800681530c83c3cb98dd792f766d0648ca47d9718447c007964464255f19ec2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.10.0/cratis-3.10.0-linux-arm64.tar.gz"
      sha256 "c7e75561b359d750a51bf5ba9dbdbacdcfda42df2d1a5b76a36038d5538d3c45"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.10.0/cratis-3.10.0-linux-x64.tar.gz"
      sha256 "9d3c1395cf1527c07fd8888f4e1d099e3850a2d06a6fd3c3c190978d1c5fff50"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

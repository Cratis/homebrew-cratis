class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.63.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.63.0/cratis-3.63.0-osx-arm64.tar.gz"
      sha256 "e23d150283595621c6312e39c978fa465929f9817cc67eb49dfb153298cb961d"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.63.0/cratis-3.63.0-osx-x64.tar.gz"
      sha256 "0e109c2937a14fbfb9def88795d20a7c9c74c9f64a8d2aeec597ac63a1b536ff"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.63.0/cratis-3.63.0-linux-arm64.tar.gz"
      sha256 "ecb16a6c6ad1b02d4bda4756d3025841792a6b8ef0ad635e5bef9a4312720360"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.63.0/cratis-3.63.0-linux-x64.tar.gz"
      sha256 "753487f06fb49f5f086c0ef2b3d5277bba5f221fc183fea9207f36d70751d101"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

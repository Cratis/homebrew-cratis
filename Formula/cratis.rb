class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.138.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.138.0/cratis-3.138.0-osx-arm64.tar.gz"
      sha256 "f01aea36e9d950c4e81cc2b48d52fba2598ba4b8a5007c8673419bb264123d33"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.138.0/cratis-3.138.0-osx-x64.tar.gz"
      sha256 "343aa473b3a5bfa279f53e736d73e97679a2af3df6dacf1e11a50af5eda48006"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.138.0/cratis-3.138.0-linux-arm64.tar.gz"
      sha256 "da3f16c6859b7f0e73fb63f5316c2df66a25b60a2f4bc25e562311503c5ac453"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.138.0/cratis-3.138.0-linux-x64.tar.gz"
      sha256 "6310299c9f3d035f6e24f6b94f8d73ac7e24b2704a33ab2cb186ccb00dd6de0b"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

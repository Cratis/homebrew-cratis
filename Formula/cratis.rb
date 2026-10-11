class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.50.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.50.0/cratis-3.50.0-osx-arm64.tar.gz"
      sha256 "14ebd779a2410c87c60eabd1e7fb2993db8c3dab123024a397649fd645936e70"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.50.0/cratis-3.50.0-osx-x64.tar.gz"
      sha256 "fbc780e489b157e86659bdb25260e76301ce75e2822f549b3a2b94db604866b0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.50.0/cratis-3.50.0-linux-arm64.tar.gz"
      sha256 "16121368ea82e3a4de3e7baea4533be4114e370519d789edf38cec06e2068c42"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.50.0/cratis-3.50.0-linux-x64.tar.gz"
      sha256 "1f13ebc15b00750d91a5c8d6b0a3b512ab1b6b31cfd96b0a2c9ee3ef9d3cce75"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

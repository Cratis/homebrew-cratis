class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.120.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.120.0/cratis-3.120.0-osx-arm64.tar.gz"
      sha256 "a7257934495f6df2206095bec5da3b13c8f7fc371a5261c5d4a2a2ea9556adad"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.120.0/cratis-3.120.0-osx-x64.tar.gz"
      sha256 "b7ece5286c0a56310691f8b2711d0e27ce5f8ad8c512755dd1259be1e4cd95bd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.120.0/cratis-3.120.0-linux-arm64.tar.gz"
      sha256 "e410902a74653095ee8df7e805cf11020da07983d9878e7216de9bcaaecf78a3"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.120.0/cratis-3.120.0-linux-x64.tar.gz"
      sha256 "b92b870508ad4f29127fe7498691fe1bb4aae2fc50d1b8aa45f998e8086557cb"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

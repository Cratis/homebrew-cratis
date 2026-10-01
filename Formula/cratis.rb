class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.22.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.22.1/cratis-3.22.1-osx-arm64.tar.gz"
      sha256 "7185b10e94c898f4306af85595b0f16b4ac7a67ebe3c764e375736fe36c8c3f2"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.22.1/cratis-3.22.1-osx-x64.tar.gz"
      sha256 "f3f482a7d008e79be4fe5a30c1d7ab4ca912a7494b6fda7376d0646b0d6397fc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.22.1/cratis-3.22.1-linux-arm64.tar.gz"
      sha256 "1bcc59f75c3be45c0a27fdd52cc85f289ff53e9a70645de94816e305130ceb3e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.22.1/cratis-3.22.1-linux-x64.tar.gz"
      sha256 "18c52a60db7fb2f405909f538397eb3bb76f5fcf74c47caf746b3719297e26f3"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

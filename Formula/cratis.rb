class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.103.5"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.103.5/cratis-3.103.5-osx-arm64.tar.gz"
      sha256 "f6253e7ce9699ef4ab6eacea92371b7f6fa716a0c6ea2c769f3ab84ed12902b9"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.103.5/cratis-3.103.5-osx-x64.tar.gz"
      sha256 "1d433883d0d3e8e0cca9712f884f326c62ece81e07fd3c3fb0488bdc0f9e4207"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.103.5/cratis-3.103.5-linux-arm64.tar.gz"
      sha256 "82abf63fbc67e0baa8202dc7705c5edad54ff579edb8b10e1c963f24b96fe7ce"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.103.5/cratis-3.103.5-linux-x64.tar.gz"
      sha256 "14c659be752e1d1e1aaac30a744acade22f64b8e7fcd253e2364e40ca112cd20"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.118.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.118.1/direct-runner-3.118.1-osx-arm64.tar.gz"
      sha256 "f4f8eadd7d12d0b0a27ae2d543b2e8a8c5fe407aff06eb068cba2615284cecbd"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.118.1/direct-runner-3.118.1-osx-x64.tar.gz"
      sha256 "8b5b7c2a10a652ba4e9a728ca73c231dcaf0ffcb71dfceaa295f5d15fd8aeb66"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.118.1/direct-runner-3.118.1-linux-arm64.tar.gz"
      sha256 "5cfdd13ef75db3404a57e66d459258bde3d11c434167518563ac5460454e18d9"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.118.1/direct-runner-3.118.1-linux-x64.tar.gz"
      sha256 "0942730177f1b86312b5d4ffe85b5afe5b5980ae47fce16e3637a12d79190c52"
    end
  end

  def install
    bin.install "direct-runner"
  end

  service do
    run [opt_bin/"direct-runner"]
    keep_alive true
    log_path var/"log/direct-runner.log"
    error_log_path var/"log/direct-runner.log"
  end
end

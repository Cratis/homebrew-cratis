class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.117.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.117.1/direct-runner-3.117.1-osx-arm64.tar.gz"
      sha256 "f7c0f18d0519d14f643ab8c26018165008607b3f25f28426fe96e934c5773a84"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.117.1/direct-runner-3.117.1-osx-x64.tar.gz"
      sha256 "8b9ec72c22185ef3c9699e0019a96aaac4374164e12df042767af116e642c82f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.117.1/direct-runner-3.117.1-linux-arm64.tar.gz"
      sha256 "fe79d60a341534fc82cbb1ba8ceb763c2223c6668b09589d14311f739f6b44a8"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.117.1/direct-runner-3.117.1-linux-x64.tar.gz"
      sha256 "aaa9c6ce230c584bd672cabc3eaf646b668f26ad06f5fbcc2fa4b5e7fe5f38bc"
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

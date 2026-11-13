class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.84.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.84.0/direct-runner-3.84.0-osx-arm64.tar.gz"
      sha256 "7cc1b547185483883bedcb38eb1c3b4c49c30f80e6dcac8b0d1ef7971ab1fdcc"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.84.0/direct-runner-3.84.0-osx-x64.tar.gz"
      sha256 "39648fa0c0b5e37d2f52015598f5d9bce5506341e35c7760fdc8537ea1b9de0a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.84.0/direct-runner-3.84.0-linux-arm64.tar.gz"
      sha256 "66ab2c7e2661ebbd6f28ba4fcb8f493293825e6bbb84c46038217a90ad1776b9"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.84.0/direct-runner-3.84.0-linux-x64.tar.gz"
      sha256 "3e5b52a1afd239336a1b583833900ebd4afdff4a26d3996ce6a2412263b52385"
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

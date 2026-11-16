class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.112.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.112.0/direct-runner-3.112.0-osx-arm64.tar.gz"
      sha256 "3f1b9e3fc1a8fb77aa96ab75cbab889b465eea274b041579e29839df01a64451"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.112.0/direct-runner-3.112.0-osx-x64.tar.gz"
      sha256 "cb5729a71c4f2ee6ee72582690833a8a5a403d3f3bc6bc59f76523f512a572b7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.112.0/direct-runner-3.112.0-linux-arm64.tar.gz"
      sha256 "a194c0fb6f60eff970e03cb4c5ece3ea5de20b45e022097d5c6354dbca08cd17"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.112.0/direct-runner-3.112.0-linux-x64.tar.gz"
      sha256 "74c6c5a9ad3a449a361f9381be48a2119adcb2f68c0dd0b5a7ad85357e54981d"
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

class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.61.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.61.0/direct-runner-3.61.0-osx-arm64.tar.gz"
      sha256 "1bf7fe4677cc766901f57eeeabdf04d983e3bedf2cde0fd490b57ccedb4f8d1a"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.61.0/direct-runner-3.61.0-osx-x64.tar.gz"
      sha256 "827ca5dbbeef872ceeeb27b47e834628a53970ca3d5f248458a6507279209cef"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.61.0/direct-runner-3.61.0-linux-arm64.tar.gz"
      sha256 "9f03da139ed42677909e94b95302003b74571609d62117f712fb981c7dbcd930"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.61.0/direct-runner-3.61.0-linux-x64.tar.gz"
      sha256 "c1f72b1b51ef8f0492d176bb0b6a3fa190d57f22360344fc18ede4ee396cd9d2"
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

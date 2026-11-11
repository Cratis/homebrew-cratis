class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.61.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.61.2/direct-runner-3.61.2-osx-arm64.tar.gz"
      sha256 "a13b9eca772f56b43565bb284d49865a368c3e0ddbf15ca4caadc3358d8bd70e"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.61.2/direct-runner-3.61.2-osx-x64.tar.gz"
      sha256 "e8010ec1e9123793baa3e0a1907d1abfb571e3efab40a2ad9db64c5a7dc5a91f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.61.2/direct-runner-3.61.2-linux-arm64.tar.gz"
      sha256 "0dc39762dd1969a0690ff7910609d95e8f4abdc82694320a52077160a97d46be"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.61.2/direct-runner-3.61.2-linux-x64.tar.gz"
      sha256 "0cd233729b6f1b762f986d28b6a84338bb84dd955c29603baf32699257a56818"
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

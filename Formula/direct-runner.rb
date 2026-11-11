class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.63.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.63.0/direct-runner-3.63.0-osx-arm64.tar.gz"
      sha256 "1d8bf6e22a4e3f018e2a40d66dcf58a28c60ec71c2d3e87e2f8888fe90db9add"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.63.0/direct-runner-3.63.0-osx-x64.tar.gz"
      sha256 "b424427a5b660c1693375cdbe70b6d84e4ac61c96ae2ec0a89de84e19d033d23"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.63.0/direct-runner-3.63.0-linux-arm64.tar.gz"
      sha256 "c14fe717cf4bf7fc937ed95a4ada65072dfd3727980c25229335bc67c6ef60a4"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.63.0/direct-runner-3.63.0-linux-x64.tar.gz"
      sha256 "6a4d706982e22515585a8a93b40851124f1226f1f2e93628b026cff6ee5af04b"
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

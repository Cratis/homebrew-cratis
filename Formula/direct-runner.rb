class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.107.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.107.2/direct-runner-3.107.2-osx-arm64.tar.gz"
      sha256 "8b7cbb8754da1215ad41f2f9353ec39aaf7ecee2c281020269b49966043817fb"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.107.2/direct-runner-3.107.2-osx-x64.tar.gz"
      sha256 "fcffa89e27d5201e0cc7c835a54540f64f1adb1064b45083aa7398b7ec9d0771"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.107.2/direct-runner-3.107.2-linux-arm64.tar.gz"
      sha256 "8b5ce95f2fc5c3ff24567361c24b1ffef59f293c7d1442ac7d7c86ed9c5fb354"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.107.2/direct-runner-3.107.2-linux-x64.tar.gz"
      sha256 "833cd4a71b1e66e95830ae397eec99ff67a334c94676b509fd6634f1ac489549"
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

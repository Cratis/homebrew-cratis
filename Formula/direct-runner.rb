class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.80.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.80.0/direct-runner-3.80.0-osx-arm64.tar.gz"
      sha256 "6c22ce78f492c84ab369ea25215f279f9f66463683226dd486bd9eaacf6bf672"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.80.0/direct-runner-3.80.0-osx-x64.tar.gz"
      sha256 "35be0132274fe0dbd67055805c1d60207a5b2101a0d983a222dfd7fbcef8236a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.80.0/direct-runner-3.80.0-linux-arm64.tar.gz"
      sha256 "9d05966f49fee5be35113538eb388122e45b715e5313f3c6736a5b2fc66d613f"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.80.0/direct-runner-3.80.0-linux-x64.tar.gz"
      sha256 "89109fad90208614ba59a969789fd6c7d5553957f17375157ebd71bf74e0854e"
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

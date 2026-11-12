class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.65.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.65.0/direct-runner-3.65.0-osx-arm64.tar.gz"
      sha256 "686b3a72ab51504946b7e1cf4164ae9dcf9c241c161bab6f296bd4b61d71ab21"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.65.0/direct-runner-3.65.0-osx-x64.tar.gz"
      sha256 "146bf9642060a0983f5e14750fcdd4e4205b3309c0284be4747caa3c5e390617"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.65.0/direct-runner-3.65.0-linux-arm64.tar.gz"
      sha256 "0650936fcaea813d98ebb27698ba3ee44984eb3ffbfcb2fdaeba8f65c372e1a7"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.65.0/direct-runner-3.65.0-linux-x64.tar.gz"
      sha256 "29031d4320c080f43be0641c9781c55e57df4313fb4ae38abe69cc86e2c01abd"
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

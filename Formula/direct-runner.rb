class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.147.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.147.0/direct-runner-3.147.0-osx-arm64.tar.gz"
      sha256 "b356399b70b956f02bdea47f9a36257009103f9c498f0418d9bb693fa889b322"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.147.0/direct-runner-3.147.0-osx-x64.tar.gz"
      sha256 "bdacf0a4fb717af44cf9ade2982618b9ce3ad6c7dd4f5206140599785de1ab2e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.147.0/direct-runner-3.147.0-linux-arm64.tar.gz"
      sha256 "1610ee42b5846581e8028b7502d127ee792224e83491534a3812fdc60a634a6e"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.147.0/direct-runner-3.147.0-linux-x64.tar.gz"
      sha256 "4afb068f1ffc63fe8b7b4a5ebd83adac47f0e3f5aa13baea9855a0c4ba86e669"
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

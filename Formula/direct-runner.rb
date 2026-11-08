class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.50.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.50.0/direct-runner-3.50.0-osx-arm64.tar.gz"
      sha256 "95868c949f39af348a26894f4799762fd23a81a2e8935056121bc817c493ea91"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.50.0/direct-runner-3.50.0-osx-x64.tar.gz"
      sha256 "6a239832d5b77f090fde80ba02fdb504a0fdb8a371fbf637846f4cd8f7ce5888"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.50.0/direct-runner-3.50.0-linux-arm64.tar.gz"
      sha256 "45d1354a9cff28900d0880f12bc6664df771a70dcdb696d72638c28350c5941c"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.50.0/direct-runner-3.50.0-linux-x64.tar.gz"
      sha256 "bdb78c77606978b27d7ca0dc9921fe3da67820fe44381c4a983200d0b612afe0"
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

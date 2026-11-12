class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.70.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.70.0/direct-runner-3.70.0-osx-arm64.tar.gz"
      sha256 "dcd32257eca11e8f840565764bd3b28ec122598bf235a5252b0bac0c7d565005"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.70.0/direct-runner-3.70.0-osx-x64.tar.gz"
      sha256 "0fc5aa582eb9574d9a5d23f14d5195a0e431455fd0667e8296af9a75bdee040b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.70.0/direct-runner-3.70.0-linux-arm64.tar.gz"
      sha256 "0e1baf6b35fa6409f2b5cf21ec6bce2fee7199f6929575b9b492b3e189a32380"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.70.0/direct-runner-3.70.0-linux-x64.tar.gz"
      sha256 "d8ac39a00f0577f48d3f10a85af7ce0d6072f25b3926029915b74023edd8a4e6"
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

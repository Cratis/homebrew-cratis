class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.36.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.36.0/direct-runner-3.36.0-osx-arm64.tar.gz"
      sha256 "ee65ec33b8a8e256d5a41fc063e35bf1cd25c260f83f65e18548828d5ebcfd26"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.36.0/direct-runner-3.36.0-osx-x64.tar.gz"
      sha256 "cdb347f20b1d6fd3bccd534a920431a7c12eff7250a4ce5422ee6f8e2ca6b143"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.36.0/direct-runner-3.36.0-linux-arm64.tar.gz"
      sha256 "f77f030a0879fdbf2ec76734b0dbf4d56277f6810e68b53681645168ac3101f9"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.36.0/direct-runner-3.36.0-linux-x64.tar.gz"
      sha256 "21d9a3177d069d086329f3d99b863c8dfaa3a47c3fd6c2130ac788046bbfd544"
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

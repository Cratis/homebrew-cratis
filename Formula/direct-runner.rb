class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.69.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.69.0/direct-runner-3.69.0-osx-arm64.tar.gz"
      sha256 "80c95780c7a95ee4fa7288e5c6d8587d2aff338c1b05f9dbdfb736369ebd3cd2"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.69.0/direct-runner-3.69.0-osx-x64.tar.gz"
      sha256 "542abe15e2a1d2d5642e201cb580a44a4e25ea6c12c66feaf1cdfcbb6975105c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.69.0/direct-runner-3.69.0-linux-arm64.tar.gz"
      sha256 "ea00601dd06a0a6ce18fcb2f3ee8eae67f6d6e4a873f79cc92928e245de7f636"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.69.0/direct-runner-3.69.0-linux-x64.tar.gz"
      sha256 "ce7fe02041366c0e375ccf4f52a5699ca138c07ed535695ac0e5271f269de25e"
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

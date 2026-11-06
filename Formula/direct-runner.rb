class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.37.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.37.1/direct-runner-3.37.1-osx-arm64.tar.gz"
      sha256 "f79a1d0f65ab3337a8bf2313ab3169fe4992e45d6c668e655fee7a67ef89337b"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.37.1/direct-runner-3.37.1-osx-x64.tar.gz"
      sha256 "f6a80fd37bed8f299eaf42c5719efafa781c55d673e9f3ddac03c71a6a49e5ec"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.37.1/direct-runner-3.37.1-linux-arm64.tar.gz"
      sha256 "abd08e72823caaa7ef11c0a3c68d95b2d6e6ed334dfc80947e8b856817c6127f"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.37.1/direct-runner-3.37.1-linux-x64.tar.gz"
      sha256 "851991867e1f85c50ffbcc92b42b2ed7a9176ce04dffcdf4d88c3daf7ea45dfa"
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

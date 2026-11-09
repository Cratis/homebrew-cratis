class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.57.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.57.0/direct-runner-3.57.0-osx-arm64.tar.gz"
      sha256 "53f5775b876b7cf1bd3f9aaf42d40eada2c6bad6d487cdb45d1e0350e18068fc"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.57.0/direct-runner-3.57.0-osx-x64.tar.gz"
      sha256 "6084d6b23210f5072a686b747a04e6aa1de14a5eec117747a5f2582741f95ee7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.57.0/direct-runner-3.57.0-linux-arm64.tar.gz"
      sha256 "028b837b0cbb05036a2a761dab61a5d640d06490056848e86e8899301dfc43cf"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.57.0/direct-runner-3.57.0-linux-x64.tar.gz"
      sha256 "888a211e449b9a922e7f34dd862dc3be6fdbd7ca2e28799e056ec1139e84680a"
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

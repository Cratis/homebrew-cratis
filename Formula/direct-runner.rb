class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.137.3"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.3/direct-runner-3.137.3-osx-arm64.tar.gz"
      sha256 "94cad6e10c82d474c1337a1d73e0463651e6312ee596b1f515656a277bd39f68"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.3/direct-runner-3.137.3-osx-x64.tar.gz"
      sha256 "7cfb855aefba211bc5587c72b7cebd7ed3374ec1dea8b928257b890fe50fa97e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.3/direct-runner-3.137.3-linux-arm64.tar.gz"
      sha256 "70c84de58305ebb7262b0cab98e4d165c7d1508d9eff67c81a1d73c3a4bf2117"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.3/direct-runner-3.137.3-linux-x64.tar.gz"
      sha256 "ff2b6cd545a64d4e6e69f87c8805b38b3b0b0c7ba8d16b96bcfbafed4e269e1d"
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

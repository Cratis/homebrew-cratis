class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.145.3"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.3/direct-runner-3.145.3-osx-arm64.tar.gz"
      sha256 "1968f61cac6a5ba2e072dde5b20eabad9863662cf7e38d57fa44ea7a37d0a2aa"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.3/direct-runner-3.145.3-osx-x64.tar.gz"
      sha256 "bc88ba087375139d1ed33b07dc63264d707a049cd1d26fb74dc0073a456d6ae3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.3/direct-runner-3.145.3-linux-arm64.tar.gz"
      sha256 "d3cd02b6ec2c267ff3ec00d9db724e6cdf73f4ae480a9b4c6af76b07b2e42c7d"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.3/direct-runner-3.145.3-linux-x64.tar.gz"
      sha256 "316e7b10ec901ec9a7fbc3b580f1253ffac727f422ae8f98edd77e0380c627b2"
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

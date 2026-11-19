class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.137.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.1/direct-runner-3.137.1-osx-arm64.tar.gz"
      sha256 "7d9f5f509198a82e57c2ae6d1214f62ace488d9861382d5e04467f683cb576a0"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.1/direct-runner-3.137.1-osx-x64.tar.gz"
      sha256 "49dea0386301fbf178f61609e5a329b57a8fde702f3471256f5f291330798d3d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.1/direct-runner-3.137.1-linux-arm64.tar.gz"
      sha256 "486cddda368f871ceb1a9c89b8daf788148d7b17a9d33138d0024292f0be47f1"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.1/direct-runner-3.137.1-linux-x64.tar.gz"
      sha256 "d7a33ad4b7d2be32142420312ac630b21ebe81b7f7f424b993280a28cc15d4c1"
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

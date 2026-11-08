class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.54.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.54.0/direct-runner-3.54.0-osx-arm64.tar.gz"
      sha256 "3e57c32cfb06913bd60214b375b15a666e07fd269ec83e9990d37276ff460c0e"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.54.0/direct-runner-3.54.0-osx-x64.tar.gz"
      sha256 "cf15734d0ebe4078f31dced41b4d1fa4eed980227f3020b9e744ee449697c982"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.54.0/direct-runner-3.54.0-linux-arm64.tar.gz"
      sha256 "1f64ba41c1ebdce5fbd67cb3aeea4d328b17c8fee7ca5a7ebb444d3556b40699"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.54.0/direct-runner-3.54.0-linux-x64.tar.gz"
      sha256 "2720013513009a764412cff8a910c01bfa12b9ecadf1d691b6bde19f49bddc88"
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

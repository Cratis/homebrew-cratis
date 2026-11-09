class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.56.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.56.0/direct-runner-3.56.0-osx-arm64.tar.gz"
      sha256 "7acc6d3c1af0c5b1e62c532d0a7fda2c6e094705a86f5eae3c889adf26c2e2e8"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.56.0/direct-runner-3.56.0-osx-x64.tar.gz"
      sha256 "9fd83287469804b424bb9506a9bb7f60cd4facaf9a43b77b79468fe2ae379420"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.56.0/direct-runner-3.56.0-linux-arm64.tar.gz"
      sha256 "62488b577e8bda71ae6a19613ca84cadc42f70917340154f8c301225f2989949"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.56.0/direct-runner-3.56.0-linux-x64.tar.gz"
      sha256 "2f096908eb6411e4bd5060696312cfe5e13f19779df9ad376938a240e8fa6e8c"
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

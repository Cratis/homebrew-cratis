class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.39.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.39.0/direct-runner-3.39.0-osx-arm64.tar.gz"
      sha256 "8cdb33493a107852816423e0847a9a6a4a96f42b28b6aba8ec062df74eca395b"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.39.0/direct-runner-3.39.0-osx-x64.tar.gz"
      sha256 "b4355759857e3da8cbe32e772dd5da3fba098358c4bb239de6fd5c3924174d17"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.39.0/direct-runner-3.39.0-linux-arm64.tar.gz"
      sha256 "d3711a205cdae04947ce25f6bffc46fea26869bb72367315b72bdf90773a07a5"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.39.0/direct-runner-3.39.0-linux-x64.tar.gz"
      sha256 "c79449a3699f8d30f05bcaa7699f1f5a9f15c7ed7ea7ead17efdf295af8afc76"
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

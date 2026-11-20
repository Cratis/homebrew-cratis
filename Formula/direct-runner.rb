class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.138.4"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.138.4/direct-runner-3.138.4-osx-arm64.tar.gz"
      sha256 "2e53e3c51e0e8e3d61f180245f482d0392524378768df156458a91aba8fe01d7"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.138.4/direct-runner-3.138.4-osx-x64.tar.gz"
      sha256 "01f337ba1ecc2fe9cb2ae37065dcd2c53a0d1a0c40c3247ce5c4d3afed1f60dc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.138.4/direct-runner-3.138.4-linux-arm64.tar.gz"
      sha256 "d0d1f0bdcd432f9c9a96ba957da6ebc24659d46f5d337cb664746aba50c5c940"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.138.4/direct-runner-3.138.4-linux-x64.tar.gz"
      sha256 "3d10dfe4498e12f045abdfaa58e99e5ef4c7622ea892667ed05684ac289db35c"
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

class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.144.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.144.2/direct-runner-3.144.2-osx-arm64.tar.gz"
      sha256 "ba91dcf51c90d6e4181a899851d0aca9e17fc7b10a73b4cd9348ea86e8472140"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.144.2/direct-runner-3.144.2-osx-x64.tar.gz"
      sha256 "2d8ee8029db9c092ffda9e2734f1363797c16d1e768373e08fe81463d2dfa28e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.144.2/direct-runner-3.144.2-linux-arm64.tar.gz"
      sha256 "5f818f614ac9d6ec40daddc85af2a7abf2c4b1d523d029dc862e6a5eb71a0f7c"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.144.2/direct-runner-3.144.2-linux-x64.tar.gz"
      sha256 "dec31a1a3d45b39c1222bbc510ccfcc46a15719872e69ff5e6a20125a03d2ba5"
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

class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.146.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.146.0/direct-runner-3.146.0-osx-arm64.tar.gz"
      sha256 "d9075df15b0c99f86c3c9ac22605b4b3d1691cfdc627dcb8e711411fc18bafb1"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.146.0/direct-runner-3.146.0-osx-x64.tar.gz"
      sha256 "8c6df94a09e9f4d976f381e21bfa2feb1ad2dafb7395aac1a3215ee1a915f731"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.146.0/direct-runner-3.146.0-linux-arm64.tar.gz"
      sha256 "fa3be1854eac30868a6d48f1059762a3285dc3613c540efa5fb910760d80067d"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.146.0/direct-runner-3.146.0-linux-x64.tar.gz"
      sha256 "5cfdaed74b2ebc62a751314d6e517d07d8ff2ecc8e095cb7da6e13aba39ab56b"
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

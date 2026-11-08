class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.49.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.49.0/direct-runner-3.49.0-osx-arm64.tar.gz"
      sha256 "d936547b85341a16270b9c787bfd79b73e06239e71ed5ffcba9fcc790147f33b"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.49.0/direct-runner-3.49.0-osx-x64.tar.gz"
      sha256 "b198d4bf75032d2f579f0f71f79f78125482530242711e00fa626de335c03c06"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.49.0/direct-runner-3.49.0-linux-arm64.tar.gz"
      sha256 "f9435ae9b1ec4043730ceb828c389f6a1bda4aa96a02718710add7d64be7a8dd"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.49.0/direct-runner-3.49.0-linux-x64.tar.gz"
      sha256 "81a7468d136fc8c57cfcd46a75039f0e5aa3ada5786f0a87b8b23137298ee5dc"
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

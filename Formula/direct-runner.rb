class DirectRunner < Formula
  desc "Runs Direct's agents on your own machine"
  homepage "https://www.cratis.io/direct/runner/getting-started/"
  version "3.20.3"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.20.3/direct-runner-3.20.3-osx-arm64.tar.gz"
      sha256 "63a7afb5ebdf42d01c2d311af59b29ac02d4c17c608760b14c45b05571f7233d"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.20.3/direct-runner-3.20.3-osx-x64.tar.gz"
      sha256 "3d76bf60ee163749846d86b472161d64c18afc31198e1592dd4192086663fa7d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.20.3/direct-runner-3.20.3-linux-arm64.tar.gz"
      sha256 "534204656a27ae518416ede1a90c6299f5209e31a1ae7ae761243bcd2f14f873"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.20.3/direct-runner-3.20.3-linux-x64.tar.gz"
      sha256 "79f71551c90fb87aa98ccb6f8d3d5f7370551aad665c024e983b5d6733305a00"
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

class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.37.3"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.37.3/direct-runner-3.37.3-osx-arm64.tar.gz"
      sha256 "9f20cd979cd1f04716b65d7485112a83bbf6616aed5cd3ad3631beeb62eeeac4"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.37.3/direct-runner-3.37.3-osx-x64.tar.gz"
      sha256 "cb2823c6ea1b2200aab8a9857a6547a1038d273ffa06b62a102ccaf6692a5ce7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.37.3/direct-runner-3.37.3-linux-arm64.tar.gz"
      sha256 "aa7206af59ca831f0b1601ffbd7f8328df0e18c6882055668cc72652baadce60"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.37.3/direct-runner-3.37.3-linux-x64.tar.gz"
      sha256 "6c798486cdd879f22057c47d56fdb1fd9be6e146e33a5fb54c00776821788909"
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

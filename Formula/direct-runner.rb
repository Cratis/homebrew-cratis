class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.114.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.114.1/direct-runner-3.114.1-osx-arm64.tar.gz"
      sha256 "b8554956199a87aaeb4e6f356c3f0e6bd60011333750a6e233dea6f181f5ac43"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.114.1/direct-runner-3.114.1-osx-x64.tar.gz"
      sha256 "af4b30dc68d7f832891353ba9a6ea209c1bb08fd44f68bb4be7cdbda2ac0a74a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.114.1/direct-runner-3.114.1-linux-arm64.tar.gz"
      sha256 "36faa3c82dd7f7518b83e007a2a6182d020f441017cec395423601447928ae94"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.114.1/direct-runner-3.114.1-linux-x64.tar.gz"
      sha256 "837c1c404f2fad83c9390c9b366d1e4883695079ea3d21d999e2f8606120f679"
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

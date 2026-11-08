class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.53.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.53.0/direct-runner-3.53.0-osx-arm64.tar.gz"
      sha256 "8e375cdb6b4a4ca416799ef2e94377e44275fe0704809f1dd8d11c0deea97103"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.53.0/direct-runner-3.53.0-osx-x64.tar.gz"
      sha256 "76d99f46485762299c2fef8bcdb2d54e2b6813e355d5850fbea839ab1c8caaeb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.53.0/direct-runner-3.53.0-linux-arm64.tar.gz"
      sha256 "ff6dd2df13fdd8849040f88adcf36e43e95560db0a10853cdbb4ad7d14c6d0c9"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.53.0/direct-runner-3.53.0-linux-x64.tar.gz"
      sha256 "f7715ec932dfe87134ba033b6aaa006b74c47518c1f971d756e183f77dfb8aa1"
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

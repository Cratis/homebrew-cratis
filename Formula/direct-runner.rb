class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.82.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.82.1/direct-runner-3.82.1-osx-arm64.tar.gz"
      sha256 "4d8fe6f61c6cd405d316d6fb9c1b428e74f40c0c78f44175d2591659416833ec"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.82.1/direct-runner-3.82.1-osx-x64.tar.gz"
      sha256 "53cc6949f8b27f1b5c50b083a07a144c08bdc4353eafdd688f1b26d5e7ddc31f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.82.1/direct-runner-3.82.1-linux-arm64.tar.gz"
      sha256 "c04a1b9706822514d2795d8162a437519f7809d423aa18113b4aba2901b662ae"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.82.1/direct-runner-3.82.1-linux-x64.tar.gz"
      sha256 "0e721ab07d268f4872a68cd3fb702824a775332bbbb9598cb2f8220c7ca759be"
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

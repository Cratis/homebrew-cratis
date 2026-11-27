class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.149.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.149.0/direct-runner-3.149.0-osx-arm64.tar.gz"
      sha256 "74abdb73789b42838b23fe38b24ec4feb68d8d68e3f6eb06417d76c97798cd4a"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.149.0/direct-runner-3.149.0-osx-x64.tar.gz"
      sha256 "c4fcea293fd534e73df2f419dadb78be1bb3942e14ce81ba8022ec7edfe7834a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.149.0/direct-runner-3.149.0-linux-arm64.tar.gz"
      sha256 "08aa50baf05cae8f198ae92908cabea5f3219e0db0f1f676774b627c3e2f82b5"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.149.0/direct-runner-3.149.0-linux-x64.tar.gz"
      sha256 "49a80f317f5b6a93b56dffb0ee735b4c88f0db6b79c89bbba0b72042ea064a30"
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

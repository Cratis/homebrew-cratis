class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.35.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.35.0/direct-runner-3.35.0-osx-arm64.tar.gz"
      sha256 "7dff29102f09b2e1382faf2497901040aa9d0a77470e6ddd5c387632699e742f"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.35.0/direct-runner-3.35.0-osx-x64.tar.gz"
      sha256 "14306b4630177d40ffd8442c33c522ad117d7e6b90ae674c0112706e3ee26a28"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.35.0/direct-runner-3.35.0-linux-arm64.tar.gz"
      sha256 "1ad5fa2902423602ddda5f951e0b5dbd095eb5e81564db65d7c42003019f7d04"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.35.0/direct-runner-3.35.0-linux-x64.tar.gz"
      sha256 "a9d0aa9a7867f690d62d50aa73d3ba57035f2f970b3c4a7a51e45e1b4f66b46f"
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

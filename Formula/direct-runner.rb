class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.129.6"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.129.6/direct-runner-3.129.6-osx-arm64.tar.gz"
      sha256 "b221632a19e488c8dcbf6fd71fe7677520744bd2815a50806e8375927348726c"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.129.6/direct-runner-3.129.6-osx-x64.tar.gz"
      sha256 "21ee2e0c2bd17053e011eff23fecf78b07a7aa908290442359a4062de2e5105e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.129.6/direct-runner-3.129.6-linux-arm64.tar.gz"
      sha256 "4edf5f384a26fa257de767eb1c473d108bd8a7823059aa4a0997b57b0c310d4f"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.129.6/direct-runner-3.129.6-linux-x64.tar.gz"
      sha256 "a466b9af59be2570dffcb296a8847270abfa6ecd63b1eb1d9b42cef0322c9a5b"
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

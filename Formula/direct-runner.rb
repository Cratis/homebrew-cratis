class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.124.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.124.2/direct-runner-3.124.2-osx-arm64.tar.gz"
      sha256 "128f1308a8acf6908d441e266bbb30692d5a1278106ecd082680791c23af13dd"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.124.2/direct-runner-3.124.2-osx-x64.tar.gz"
      sha256 "914a716afc99374a7b8bf192750e4b622ffef8afb3bc73e6ca44bfcbc366a3fd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.124.2/direct-runner-3.124.2-linux-arm64.tar.gz"
      sha256 "8b933445862ff632875e259aa360111631df1cc9fcd9d4dae41a21a09bf86cbe"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.124.2/direct-runner-3.124.2-linux-x64.tar.gz"
      sha256 "48e569f9641f41e5af2b96f9c2dff6546b8575348a6340a73a0a6edb06cde2ef"
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

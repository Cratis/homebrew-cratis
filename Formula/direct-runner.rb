class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.61.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.61.1/direct-runner-3.61.1-osx-arm64.tar.gz"
      sha256 "7ca6b02620ef70aa7d7430bdf0fa9146126eb32e1c0a68aaed3aef8347405631"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.61.1/direct-runner-3.61.1-osx-x64.tar.gz"
      sha256 "bb646f1c7e4cdca65004bf8708ffe0237eceb625288a92e65b949adf345bafbb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.61.1/direct-runner-3.61.1-linux-arm64.tar.gz"
      sha256 "11c4c8bf32fc8cf945799fd2f2e009ffb4b7f37bd7ed87983a469f928cbde8d6"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.61.1/direct-runner-3.61.1-linux-x64.tar.gz"
      sha256 "7c76dfafaea7183314f5481d27821eee024b8c4a402ffd15d22f2b51d2361c6d"
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

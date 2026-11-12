class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.73.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.73.0/direct-runner-3.73.0-osx-arm64.tar.gz"
      sha256 "9ba35c43841e39872a875c8fb53989947e38b73adbc4b670116359d94f7eb062"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.73.0/direct-runner-3.73.0-osx-x64.tar.gz"
      sha256 "8d0f25016e45076cc6f245672525aa2b187744bd212b9cb4156b91063ddd7745"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.73.0/direct-runner-3.73.0-linux-arm64.tar.gz"
      sha256 "20974f2dfbc410bce38fa046b2225d5622997cc13f20b8b66e3f95ae26c6ed3e"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.73.0/direct-runner-3.73.0-linux-x64.tar.gz"
      sha256 "bfba35648b47d5e5c126cf019cb94af45bbdd243443d00d866052045298d4ce9"
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

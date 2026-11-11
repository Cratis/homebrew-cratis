class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.62.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.62.1/direct-runner-3.62.1-osx-arm64.tar.gz"
      sha256 "ff437f06f9e3ecf0813288e23e4ef8bcc89700177a19985659f7f16187a53946"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.62.1/direct-runner-3.62.1-osx-x64.tar.gz"
      sha256 "13a6592e435e8161432536d20e05e608c6c2bec8013d12fed8284f88060ae2ca"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.62.1/direct-runner-3.62.1-linux-arm64.tar.gz"
      sha256 "1e605cbaa18129322aaf262a780427a38b381b766b6aea3db0d84edd320f3070"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.62.1/direct-runner-3.62.1-linux-x64.tar.gz"
      sha256 "e7b9cfeac7968a424f7b63fe0d41892d1b1b16a1335afb265906e78096cdd079"
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

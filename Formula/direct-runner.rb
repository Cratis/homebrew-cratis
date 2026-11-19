class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.133.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.133.2/direct-runner-3.133.2-osx-arm64.tar.gz"
      sha256 "065e91280ec4fec504ce1fbe1b1643f533d00e32106906d7ca426b0e40e092d8"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.133.2/direct-runner-3.133.2-osx-x64.tar.gz"
      sha256 "d0dc77f0a03a606e2c696f853e0813fc0ac228ce098ee49c39886ec28fce8bff"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.133.2/direct-runner-3.133.2-linux-arm64.tar.gz"
      sha256 "49a92deff6c24bcd2229d0acdf06a468f2be584625464026e12a48554ed7efb2"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.133.2/direct-runner-3.133.2-linux-x64.tar.gz"
      sha256 "38bbc64261f554964a083281c2373d952b225254fb120acc7597f0ad9358d4fd"
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

class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.57.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.57.1/direct-runner-3.57.1-osx-arm64.tar.gz"
      sha256 "165a0314dfdf3b714e7683485ccea84f35ea716297e87ffed6bf3b385c6135f1"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.57.1/direct-runner-3.57.1-osx-x64.tar.gz"
      sha256 "a13a6163a1394e9d283cf86edd6aefd812363e167ea4b4a68b571062c659d6ec"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.57.1/direct-runner-3.57.1-linux-arm64.tar.gz"
      sha256 "076d2e79b38453a3ca6c56a114ca4feadac79754593e8919f9a5b077b0dc5a50"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.57.1/direct-runner-3.57.1-linux-x64.tar.gz"
      sha256 "ff8d2ababed37e1aa512578c852a0484cf3be046a4c47db0919eee7a2a6c4692"
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

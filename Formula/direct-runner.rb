class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.76.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.76.1/direct-runner-3.76.1-osx-arm64.tar.gz"
      sha256 "d5d62262d96df5451b237a661a7edac0f5f98c400a6a07c89197a66437b4d57d"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.76.1/direct-runner-3.76.1-osx-x64.tar.gz"
      sha256 "63af2f2e1cfb60aee74e54f3e81ebe4126c1552aadc36290b89050c9b65a6cb4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.76.1/direct-runner-3.76.1-linux-arm64.tar.gz"
      sha256 "a3709df734d907ff06c0226f9f16bd56fdfdcc5d26fd2bfc21f202980fa8f8a4"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.76.1/direct-runner-3.76.1-linux-x64.tar.gz"
      sha256 "40ea16a53caa194a978188427e6ce0ce25c405f0ecfc5f6a9bc82ca46bff9d4f"
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

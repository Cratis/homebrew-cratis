class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.145.6"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.6/direct-runner-3.145.6-osx-arm64.tar.gz"
      sha256 "9982e817de801c73b9eca1152142a62ce6dc639d509f14912d80b57e02f629eb"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.6/direct-runner-3.145.6-osx-x64.tar.gz"
      sha256 "ca5d6153b231b9468733811105295f1bf9c745adacdc9f8193d4d7bb3990ae3b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.6/direct-runner-3.145.6-linux-arm64.tar.gz"
      sha256 "6c3b033af5309285c96499d07d46695fcd586d74b68a9556370ea0a9a7a004d9"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.6/direct-runner-3.145.6-linux-x64.tar.gz"
      sha256 "9667fb11ff04d0f22dc8bf8da57cd9218e5417cb4d6da87a73c04f5053f9978d"
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

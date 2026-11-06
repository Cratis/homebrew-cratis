class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.38.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.38.2/direct-runner-3.38.2-osx-arm64.tar.gz"
      sha256 "8aa04b38b769653b66203ecd64bef372acbc5fa1b870aeb9b24a0d2bf4fe874c"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.38.2/direct-runner-3.38.2-osx-x64.tar.gz"
      sha256 "396f1edd6a8c610a1d6606a9722c1fb3969aa6d648aff9b1a3dccf2b36fc318c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.38.2/direct-runner-3.38.2-linux-arm64.tar.gz"
      sha256 "8bca50692cd524e61ad66ba99d9c0422a592106ddf94d69425e457163dfb8acf"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.38.2/direct-runner-3.38.2-linux-x64.tar.gz"
      sha256 "3b607562f9e9ecab1a166efdcb72b33e128b75271d6ec17a6ad6ad64536ac27b"
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

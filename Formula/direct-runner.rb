class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.36.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.36.2/direct-runner-3.36.2-osx-arm64.tar.gz"
      sha256 "05a91c3e72b4228e28c40c9f986f50255a642d38321ad8b54d19f5ccb1839193"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.36.2/direct-runner-3.36.2-osx-x64.tar.gz"
      sha256 "db36aa1134369abc5aff59e11e48fb2e702aa585a045c1669d193a4e6439329d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.36.2/direct-runner-3.36.2-linux-arm64.tar.gz"
      sha256 "e1b1e9dc7fb7cf4f517028cbb98fc85039a34882c88bfeb73de7cbda2cb7011e"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.36.2/direct-runner-3.36.2-linux-x64.tar.gz"
      sha256 "4531c3522c93e0f34008ce844def74fefd455d3aa9e8fd5652d4d5e9871392bb"
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

class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.128.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.128.0/direct-runner-3.128.0-osx-arm64.tar.gz"
      sha256 "567116d838212d17a25bde0a8caf608bbada38d48482623f91567103e6e70c01"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.128.0/direct-runner-3.128.0-osx-x64.tar.gz"
      sha256 "cbd4f4d4024602e716edc6d15710979dfe5a6fe49531e31586d93f61ab4a2c8b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.128.0/direct-runner-3.128.0-linux-arm64.tar.gz"
      sha256 "67a9c9a76a05c0387a0c522bd84636eb93c2e86c0a3bb631897e7e4f55ff6a47"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.128.0/direct-runner-3.128.0-linux-x64.tar.gz"
      sha256 "191ab9bf1dbdaaab22324d7aa458f35280bc56fea1fbbf0959a8fe69b9e8210e"
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

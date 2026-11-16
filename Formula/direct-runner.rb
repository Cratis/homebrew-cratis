class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.118.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.118.2/direct-runner-3.118.2-osx-arm64.tar.gz"
      sha256 "fc1632bcfd219c8e6599421c0cfc325a8c3f3a671f5f95100fa20735bef53367"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.118.2/direct-runner-3.118.2-osx-x64.tar.gz"
      sha256 "aa8fef10c2631243966d09a5d3c71037b22d6158940df243ba7dcc30d8396cd6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.118.2/direct-runner-3.118.2-linux-arm64.tar.gz"
      sha256 "d2eff4c616e9239faa3a17f50ee53f8afa1eb37063fddb3da044801b1eaac906"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.118.2/direct-runner-3.118.2-linux-x64.tar.gz"
      sha256 "4a1a752b72294cd3842be14da95ff675b8e7c98a09526e8d1b1e7b8c1e9136cf"
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

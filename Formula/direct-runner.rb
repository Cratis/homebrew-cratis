class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.40.4"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.40.4/direct-runner-3.40.4-osx-arm64.tar.gz"
      sha256 "46218096416416a307423cf9aae1e8f8bda2166b91a00e84c57ec9b077f8a60e"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.40.4/direct-runner-3.40.4-osx-x64.tar.gz"
      sha256 "2723a758d4bc44a3e1c04efdc9032a5cd65cd2feced28adfb714b737d534d4f2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.40.4/direct-runner-3.40.4-linux-arm64.tar.gz"
      sha256 "bc57048ca9b7a211073f2498c8ad49ae13a7c530912e550b9c70b3b18f868243"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.40.4/direct-runner-3.40.4-linux-x64.tar.gz"
      sha256 "11712e8908db0e55373ac6cc67a7a26e49dba5873f70c77e63c33e29964147e4"
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

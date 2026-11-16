class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.113.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.113.0/direct-runner-3.113.0-osx-arm64.tar.gz"
      sha256 "134afef8609400c92e6a69009a5c8af81e93290d8c2d36d89f4b5a1b6a03ed97"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.113.0/direct-runner-3.113.0-osx-x64.tar.gz"
      sha256 "2afa3184e467c9a5931c663d978b7b3f9f36cf4d967ff671fc43cc9d374139bd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.113.0/direct-runner-3.113.0-linux-arm64.tar.gz"
      sha256 "3e9ef38579bc43f2565a7e5718ce9d297a7ffdf0d9aa563f358e64a317511e40"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.113.0/direct-runner-3.113.0-linux-x64.tar.gz"
      sha256 "2dfd2f52f9b5008d4fedae3dc098c0df1f1cda29488c1a9ded875d4650752a96"
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

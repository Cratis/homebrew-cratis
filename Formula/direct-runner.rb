class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.51.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.51.0/direct-runner-3.51.0-osx-arm64.tar.gz"
      sha256 "1ffe2dc93767939bfbec72bdc67fb1e3815109d001dbd808feed8658fb6852c5"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.51.0/direct-runner-3.51.0-osx-x64.tar.gz"
      sha256 "b4ca8c5c8cefe192e5863bb66fe44e9e946cd3e06a1f75ad2a1409094fa1c66b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.51.0/direct-runner-3.51.0-linux-arm64.tar.gz"
      sha256 "131f7ba28b90674c9bd6696f3c73d76e3a37b4c6f49a0740653ea38854d0ec14"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.51.0/direct-runner-3.51.0-linux-x64.tar.gz"
      sha256 "054058698275156ecf64d250632f86413e109c1cede5f2fad3caae8877cf0d17"
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

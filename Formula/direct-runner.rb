class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.74.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.74.1/direct-runner-3.74.1-osx-arm64.tar.gz"
      sha256 "49eab5d85c90f3d10ff97916ba5a50a09ef878b7682d47c940bd42678ebd4ee1"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.74.1/direct-runner-3.74.1-osx-x64.tar.gz"
      sha256 "efd27c8d05b84f43921aacd940d767a0a3ab358e1c673317a3d1478d0bd06363"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.74.1/direct-runner-3.74.1-linux-arm64.tar.gz"
      sha256 "261f493ed59d2377d1352bdf65eaec666f2165f87647efc0c80fcb0153b032f5"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.74.1/direct-runner-3.74.1-linux-x64.tar.gz"
      sha256 "e5fec6dcd8aa584f1544df4f5ffc3b3ca00166067b07ca1c95bcea4926b0d990"
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

class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.141.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.141.2/direct-runner-3.141.2-osx-arm64.tar.gz"
      sha256 "6c4ca89a2fb476fed7bb86965ef5852536e44826f38fb795fe85f88607fe4180"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.141.2/direct-runner-3.141.2-osx-x64.tar.gz"
      sha256 "04db50f87779216bab4965bbbdc50089fd164ce738ed7115d1873da2b6d3fac5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.141.2/direct-runner-3.141.2-linux-arm64.tar.gz"
      sha256 "031a56d92f21731a27c2d713551deeafae26be127822200f24a60cf043de92c5"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.141.2/direct-runner-3.141.2-linux-x64.tar.gz"
      sha256 "da0bb904ccea002776c5e7f86b2356644b7872ff458f96b9947c937d31f40e9b"
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

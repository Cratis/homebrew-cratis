class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.145.5"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.5/direct-runner-3.145.5-osx-arm64.tar.gz"
      sha256 "fe7a6c32710a12d776326bfa1061206c013846a0afcc6d18d7f0946c6ebd408d"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.5/direct-runner-3.145.5-osx-x64.tar.gz"
      sha256 "a04266a5f0fb2623b97f13293c3fe36eb50a1a0662f77b49340678998d58b4f5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.5/direct-runner-3.145.5-linux-arm64.tar.gz"
      sha256 "e9e69435ddb45bc3a8c15c3afb2aa8030ec6d0a186bef41cbb31e55f578e9cc8"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.5/direct-runner-3.145.5-linux-x64.tar.gz"
      sha256 "0791090e8ccaeb0c2e54bc6a703719d0c28ff6b8f883cf1c3d9bc2c343047627"
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

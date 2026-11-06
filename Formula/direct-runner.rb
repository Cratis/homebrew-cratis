class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.40.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.40.1/direct-runner-3.40.1-osx-arm64.tar.gz"
      sha256 "275e5eef341f62a05d22d1755b1c0b265f2e3e18f2c5b3c693033d9fc1030b0a"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.40.1/direct-runner-3.40.1-osx-x64.tar.gz"
      sha256 "3c9112a1626453d0787f9b9d47e15b60cfc1378b698481e1d378d7dc896725c3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.40.1/direct-runner-3.40.1-linux-arm64.tar.gz"
      sha256 "c78d8d8e8cddcdcdc666590ac79c7ffc6312c4e8d874ad54c728b5314407688b"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.40.1/direct-runner-3.40.1-linux-x64.tar.gz"
      sha256 "5ddb5babb5571a0304c8b0b1fc14ef511909851410affd57429ece8dcb2f7e5b"
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

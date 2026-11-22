class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.142.3"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.142.3/direct-runner-3.142.3-osx-arm64.tar.gz"
      sha256 "8b4b30b99174ab3fbf54e780d2611e7a17c09cfa3c9ef61f8985409dc6202e1b"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.142.3/direct-runner-3.142.3-osx-x64.tar.gz"
      sha256 "f0bfdd7ada20e8040c856cd896cba9c4d61e7144b9811da5c6597074a7d709fd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.142.3/direct-runner-3.142.3-linux-arm64.tar.gz"
      sha256 "7963835bba7b0d1db7eefd8dcf9e1a479a402d674ecca9ac4269ef89fa0ca891"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.142.3/direct-runner-3.142.3-linux-x64.tar.gz"
      sha256 "21e117e91abf6c265da5a07a94b14bdc1dfb08ebd33b40a6d448d538464643e8"
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

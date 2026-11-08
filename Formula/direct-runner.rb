class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.48.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.48.0/direct-runner-3.48.0-osx-arm64.tar.gz"
      sha256 "3f181813b9364856aa72b9d09ecb8b104a11342bf6b78bcc5e311db48815224d"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.48.0/direct-runner-3.48.0-osx-x64.tar.gz"
      sha256 "c1fe3d128893921853b4023e94a5b552d0ef76310f3fc0a367844492ddcbe4a0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.48.0/direct-runner-3.48.0-linux-arm64.tar.gz"
      sha256 "83fac4ab5eb87ebb82ac8aad49d61847f5eb673f6c8dd92127b028b801df325b"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.48.0/direct-runner-3.48.0-linux-x64.tar.gz"
      sha256 "dcee574ae6ddb5ecdcee7a7a496f320fbb9d44a7d4ba6dd9913307ba912fce67"
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

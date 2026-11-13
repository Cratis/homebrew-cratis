class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.75.3"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.75.3/direct-runner-3.75.3-osx-arm64.tar.gz"
      sha256 "4565b59c576271e903dcc2fe836dd182feac97a372bdf9666a74e5d7005de0cd"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.75.3/direct-runner-3.75.3-osx-x64.tar.gz"
      sha256 "aa8301ee882787781d39015be6894e75549b944a7a01547668396931e638e14f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.75.3/direct-runner-3.75.3-linux-arm64.tar.gz"
      sha256 "a73e403344e30a0db6700bdc051fd8e7a739849280b9adaacf87c0fa9bf51f14"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.75.3/direct-runner-3.75.3-linux-x64.tar.gz"
      sha256 "3e857fa59a20137f0a80ad242f035a7b1a707046e3246aa1f19e62fc19b61097"
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

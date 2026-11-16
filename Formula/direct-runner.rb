class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.113.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.113.1/direct-runner-3.113.1-osx-arm64.tar.gz"
      sha256 "c2bfdcf724030665f19c7171bbb19d623bc622802c0d896235172f93e0a7ffba"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.113.1/direct-runner-3.113.1-osx-x64.tar.gz"
      sha256 "3d6c09bdb664a93d56ec164721bba178f1b5775f8cc918bcf68b9b25248b7011"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.113.1/direct-runner-3.113.1-linux-arm64.tar.gz"
      sha256 "e6a268dbbc7b81b2de60c63174777fedfae2967ecdc975be63de370b11e571dd"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.113.1/direct-runner-3.113.1-linux-x64.tar.gz"
      sha256 "892adcca21e7dc2f19d3e9d91f0b09b2d7f38fe696ab6a4c192eb4ba3348a4b4"
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

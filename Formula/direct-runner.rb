class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.145.4"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.4/direct-runner-3.145.4-osx-arm64.tar.gz"
      sha256 "85702edb612bdad114464fe9c282ed7eea23a80ac464aff59f8e8b3a9bd913f5"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.4/direct-runner-3.145.4-osx-x64.tar.gz"
      sha256 "414cd18963a872fd4ffd8c1c8087d2b3a491d7db5df459c373f82ce20a7958e4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.4/direct-runner-3.145.4-linux-arm64.tar.gz"
      sha256 "9dcbd1ab0852ebd9be882b689acaf750e1805239a1ee48decf905b185c75d5a4"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.4/direct-runner-3.145.4-linux-x64.tar.gz"
      sha256 "04ede5ff4162ad24ec49abddfd62f05d61cc3ed35a368af09c92664968ca14df"
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

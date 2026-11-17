class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.124.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.124.0/direct-runner-3.124.0-osx-arm64.tar.gz"
      sha256 "02b97ceeff41e6b50a16268a5012d6e6b622a4aaa7f7ecd6520b143c07938254"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.124.0/direct-runner-3.124.0-osx-x64.tar.gz"
      sha256 "0830b9f358abb7d109919380ff0611ebde10f0463ce425ab480c3f0c972d2a27"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.124.0/direct-runner-3.124.0-linux-arm64.tar.gz"
      sha256 "ebaacf9013d5e43cb0ea700df3c03d94526422153e91471c86a7630c5c493192"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.124.0/direct-runner-3.124.0-linux-x64.tar.gz"
      sha256 "688d9244e743da9b78c1e47f84309d726d4d3d465f77a36e61c1e42a61d44401"
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

class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.110.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.110.0/direct-runner-3.110.0-osx-arm64.tar.gz"
      sha256 "b9da857361f8030aed2b94caddaf8d4a5efb0a83aa3367a1d47eb72a4869c4f5"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.110.0/direct-runner-3.110.0-osx-x64.tar.gz"
      sha256 "d6929b03ce6592ace98f7896d7a5aae3f5623a248eb160bfd49e1b849afaea6c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.110.0/direct-runner-3.110.0-linux-arm64.tar.gz"
      sha256 "0203ff2fb8c4b563af850e523a0c813eabbd5438bce8360a06bdf441f7c7f322"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.110.0/direct-runner-3.110.0-linux-x64.tar.gz"
      sha256 "ce96e759d1b14a14e788f1ce0f0f14d6f8cba6384de41c79c0b84f7c236074a2"
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

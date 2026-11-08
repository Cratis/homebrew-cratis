class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.52.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.52.0/direct-runner-3.52.0-osx-arm64.tar.gz"
      sha256 "ddd5fdfc772e936d4e9d3e1a370aa88861911adfeb2c239b76ccfa919cd7ed7c"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.52.0/direct-runner-3.52.0-osx-x64.tar.gz"
      sha256 "1d31f9d31ef467a93dfd9ce5b0da388623d99dace6fa8b0b5188a0fdc1405ed0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.52.0/direct-runner-3.52.0-linux-arm64.tar.gz"
      sha256 "bbe84112b39947a603991122257acd5b22a990a21ac19aacec496791dad063ed"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.52.0/direct-runner-3.52.0-linux-x64.tar.gz"
      sha256 "5de2706c2fb441250ec213799af1bb4091464089de44eb18dd1aba8703b4d194"
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

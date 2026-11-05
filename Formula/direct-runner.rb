class DirectRunner < Formula
  desc "Runs Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.32.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.32.1/direct-runner-3.32.1-osx-arm64.tar.gz"
      sha256 "b28bc5bd9d823fbeab10a16359972dc96037adac80d931d8045d6447d5ce983a"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.32.1/direct-runner-3.32.1-osx-x64.tar.gz"
      sha256 "44abad4a4b2c238382017feacf7ec190d918ad5bfcb00f7825b5f34c62743b0e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.32.1/direct-runner-3.32.1-linux-arm64.tar.gz"
      sha256 "7c35633332a916f6c7748a0cbbdc7bae2d43731f866d1eac764c172b65fdfa7d"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.32.1/direct-runner-3.32.1-linux-x64.tar.gz"
      sha256 "7e504561fb98e5a653a1aaeb777dfaada132a60d2dc5321287ea6915c8f0ac55"
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

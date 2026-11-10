class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.59.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.59.2/direct-runner-3.59.2-osx-arm64.tar.gz"
      sha256 "72405aee2c04f1a5ef7172f8731add21ec0b97b79350c8e0690b3142b25cc3d8"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.59.2/direct-runner-3.59.2-osx-x64.tar.gz"
      sha256 "0712cb559e97aa0d3afa9adf241ea2da6917a53adae3b65c11a36b9c49cc6e37"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.59.2/direct-runner-3.59.2-linux-arm64.tar.gz"
      sha256 "651a8a55e9e1c0fb6314d07ca822f699834efaf0751ea7658657cb059d8feea4"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.59.2/direct-runner-3.59.2-linux-x64.tar.gz"
      sha256 "161de3d5eb76cb2c3a5577ae27ee17cc7b96fff4220a221d4eaa31c47b4c9344"
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

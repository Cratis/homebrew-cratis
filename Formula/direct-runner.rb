class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.142.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.142.0/direct-runner-3.142.0-osx-arm64.tar.gz"
      sha256 "b0bae6ca80a4c4998949640dd08532924a439b25e4bf2ab867a596519abb639e"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.142.0/direct-runner-3.142.0-osx-x64.tar.gz"
      sha256 "e0c784d487bad577b71db7dc70fef9c8e9e0deb37495be913f337e06e3a18861"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.142.0/direct-runner-3.142.0-linux-arm64.tar.gz"
      sha256 "e74213c54d2ba434f60eb4fb1b0b8cbb50dd603d515c30aa7cfd20ef932c1268"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.142.0/direct-runner-3.142.0-linux-x64.tar.gz"
      sha256 "c03c9bb3ba3655d3874d8d8e54d7010881b900e25a752eeccb3db2cde910f89a"
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

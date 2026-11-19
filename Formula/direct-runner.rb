class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.133.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.133.1/direct-runner-3.133.1-osx-arm64.tar.gz"
      sha256 "8ee42320c93f64eb6cc3fec7ad0d2a5beecabd5f372474f3e391f0fd0572ff84"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.133.1/direct-runner-3.133.1-osx-x64.tar.gz"
      sha256 "55ce5be0b2eee24c26fa8fb592069a75bc93802cdc5050fa0efcf1002fac81b5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.133.1/direct-runner-3.133.1-linux-arm64.tar.gz"
      sha256 "06016f2d48c5790bc555ebf15c3c421363b947318b0f48c7f00bd1b432b85991"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.133.1/direct-runner-3.133.1-linux-x64.tar.gz"
      sha256 "2f672d82bdcc6f1567f6539bfa141764f4860673fe87b500b030a8fcb66ba1f4"
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

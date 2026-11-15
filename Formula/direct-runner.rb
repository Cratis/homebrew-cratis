class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.108.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.108.0/direct-runner-3.108.0-osx-arm64.tar.gz"
      sha256 "d9d37604385331c46759dc98037b6b6215973da881ed4f0202323b384b47a4d1"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.108.0/direct-runner-3.108.0-osx-x64.tar.gz"
      sha256 "098916619464e5d63fd3fed171ade05f74574cbdce588aa284df31f7b035adc1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.108.0/direct-runner-3.108.0-linux-arm64.tar.gz"
      sha256 "b54856cb49ea29046b3566d8713c0bbdc7e3dc6468cfff434eb397e31c7b84a1"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.108.0/direct-runner-3.108.0-linux-x64.tar.gz"
      sha256 "ee47e516b6f033e1ef7e736a153de5304675912fb68e8b6521ec2fe5c48bf599"
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

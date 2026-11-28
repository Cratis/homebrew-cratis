class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.153.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.153.0/direct-runner-3.153.0-osx-arm64.tar.gz"
      sha256 "42de5946a3691b10c5efadba703ba4f59e6f1c8f6a855e317fe1500102078fb0"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.153.0/direct-runner-3.153.0-osx-x64.tar.gz"
      sha256 "edb9a1e7b7a63f0717e0b61adbacb8e6c6675fca39d1ae1410f62deb12a9c28e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.153.0/direct-runner-3.153.0-linux-arm64.tar.gz"
      sha256 "689b183501e8656c1ea385f81e5120c5adaed17fa748161c882085ac38307d39"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.153.0/direct-runner-3.153.0-linux-x64.tar.gz"
      sha256 "a366fa20a509fd81fadc5da26d10fd0c488513cb8c8dbff39ec2efac9735c81d"
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

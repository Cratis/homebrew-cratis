class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.47.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.47.0/direct-runner-3.47.0-osx-arm64.tar.gz"
      sha256 "0f201a63a64e8add5c8e1b031c8f4030743b4ffc3685019a4ac1487f3c64271f"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.47.0/direct-runner-3.47.0-osx-x64.tar.gz"
      sha256 "d0c2a1ba2c46ae66bb04dbb8fe201bb8d9aae45022043bee98edf3536541cb3b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.47.0/direct-runner-3.47.0-linux-arm64.tar.gz"
      sha256 "c06d7b7451b0fe73990bfb8f9c59663fa61456a1f3c2ba5dc7d7a8d35317977b"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.47.0/direct-runner-3.47.0-linux-x64.tar.gz"
      sha256 "153030226447d5c8e0e5907316c07556d5eadc85e04ecc5e2fceaa02ca6f308d"
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

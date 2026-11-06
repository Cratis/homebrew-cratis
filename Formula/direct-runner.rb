class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.40.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.40.0/direct-runner-3.40.0-osx-arm64.tar.gz"
      sha256 "90f2473ba27230bfc1ff07c9e580254271a3fee6cb399a7d0113ec678e9dac5c"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.40.0/direct-runner-3.40.0-osx-x64.tar.gz"
      sha256 "599e4f6ed3aaa2fbfda3aac1f56765df9b9ce508f266fa136ee3c6e747113eb2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.40.0/direct-runner-3.40.0-linux-arm64.tar.gz"
      sha256 "d6fdd61dcd8cd4371f698fc641998c46395fbdfd7e7ba480e2c62d0cf7340ffb"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.40.0/direct-runner-3.40.0-linux-x64.tar.gz"
      sha256 "50ae7515a0f53641d9bc17ca2930e6db6d2b7868a0380e3d75a24fd922d644d7"
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

class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.139.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.139.0/direct-runner-3.139.0-osx-arm64.tar.gz"
      sha256 "e9be89fdfb16ec2a3ba928f5030036c1f4912e3326d90bb8c1fe54032563b065"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.139.0/direct-runner-3.139.0-osx-x64.tar.gz"
      sha256 "5f7d99d2f03f44b5efbd4762e06daae5f2ae92cc31f0953505092f8cc4bf3adc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.139.0/direct-runner-3.139.0-linux-arm64.tar.gz"
      sha256 "ba2cd668ca0924cab196535eb9d6191345e3383093bce06bf6aca86f61adecf7"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.139.0/direct-runner-3.139.0-linux-x64.tar.gz"
      sha256 "c99986efd41d845473f40aede4e6c1f736e26b55a8156f200ec97f1bd4d0fd1c"
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

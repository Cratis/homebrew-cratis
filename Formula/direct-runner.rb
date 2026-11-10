class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.58.4"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.58.4/direct-runner-3.58.4-osx-arm64.tar.gz"
      sha256 "0d5aaf3570f0982f30bbcff75dde002a6d2892c1e3879ff69e0605f2cad83d82"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.58.4/direct-runner-3.58.4-osx-x64.tar.gz"
      sha256 "e6df23aedc75aa6aa976c543de0ed914192592583028bbf2da58eab9ba593c87"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.58.4/direct-runner-3.58.4-linux-arm64.tar.gz"
      sha256 "ecef601a8e931a34363c334985fbaeddf34713a797d1eabe509f373df0572772"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.58.4/direct-runner-3.58.4-linux-x64.tar.gz"
      sha256 "ec9a2b10996fb71cc4d05f61fc83a90071b974b36c45359d22f154f212e9fb72"
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

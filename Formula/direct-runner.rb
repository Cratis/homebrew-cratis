class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.137.7"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.7/direct-runner-3.137.7-osx-arm64.tar.gz"
      sha256 "33b857ddfed227156191306f85deba821fb0c0f34b604bf53bc592a9e5deb08f"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.7/direct-runner-3.137.7-osx-x64.tar.gz"
      sha256 "bdaffcd5fc601ddb8569404bdcdbdf98f611a438cc9f4341690fc581c4555e11"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.7/direct-runner-3.137.7-linux-arm64.tar.gz"
      sha256 "2cf9659dfcf8db0d3c5c79040f270a4b0e5de94db547dc8e65040310c85cc5a5"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.7/direct-runner-3.137.7-linux-x64.tar.gz"
      sha256 "c5008356289ad19f56850c5c7433547cd736c5acc2687709842a4a96a1f5d642"
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

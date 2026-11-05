class DirectRunner < Formula
  desc "Runs Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.33.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.33.1/direct-runner-3.33.1-osx-arm64.tar.gz"
      sha256 "ae48b66ed9a45648ab3cac8fd54b2e0ab65a8813039547d5a0f0b7b08a71074f"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.33.1/direct-runner-3.33.1-osx-x64.tar.gz"
      sha256 "5ba7a82cf8f152c95e793622b857116a9cd2ae82f737598682f141d601654417"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.33.1/direct-runner-3.33.1-linux-arm64.tar.gz"
      sha256 "a60ec4bb5eecb9af05671909d146819f821a454ec00334b709b493b71b1b99cc"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.33.1/direct-runner-3.33.1-linux-x64.tar.gz"
      sha256 "3c3f084c9fc0f83067cef4fcf1c5c496de031e55cae6296ceaec9e4d7702d9cb"
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

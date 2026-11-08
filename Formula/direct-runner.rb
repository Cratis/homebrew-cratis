class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.46.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.46.0/direct-runner-3.46.0-osx-arm64.tar.gz"
      sha256 "7e56d7a166da6f644e849e08506db7b5d9ebf5f19444b299e19578ebd77467f8"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.46.0/direct-runner-3.46.0-osx-x64.tar.gz"
      sha256 "1eda5e98fee30b8ea8c8c1c92145607d38452f867819c60017cbe7ae3d8a7297"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.46.0/direct-runner-3.46.0-linux-arm64.tar.gz"
      sha256 "db02d4163fb2fccbc6d58de95ee4111e6429ca1c9e83063b1901d5284a61bf3b"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.46.0/direct-runner-3.46.0-linux-x64.tar.gz"
      sha256 "e977c8375e1aab5142922a8b61d4dd0861c393f1de9e582f96224875b7dbfd50"
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

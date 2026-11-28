class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.152.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.152.0/direct-runner-3.152.0-osx-arm64.tar.gz"
      sha256 "60e0b1fb8e851fbb42d9077779901c5105c5a664fc4475c895b58b9d0ab0f8cd"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.152.0/direct-runner-3.152.0-osx-x64.tar.gz"
      sha256 "40c8bfa9a00c56160fc0759d0864a7faa45fc4ce49a03fe6472b28d44da82f52"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.152.0/direct-runner-3.152.0-linux-arm64.tar.gz"
      sha256 "48873b5937e63feb607365c0514f86e31eb6595b4c40648e07f5350dc99c537c"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.152.0/direct-runner-3.152.0-linux-x64.tar.gz"
      sha256 "79bf945543eb396e2f22f9af83199890f71c977997168dd9616e1a679b0de079"
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

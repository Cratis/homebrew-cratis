class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.43.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.43.0/direct-runner-3.43.0-osx-arm64.tar.gz"
      sha256 "1eaa2189a9e27348b73f4631bbed86e6722e8e68bc1d91822de8696af5b1292f"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.43.0/direct-runner-3.43.0-osx-x64.tar.gz"
      sha256 "4ce16462a5bc98953ba2faaf945d1babe4a7138d6f9f897e8da873115c88844f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.43.0/direct-runner-3.43.0-linux-arm64.tar.gz"
      sha256 "ba143bc4877077b73f9a643700dfe082b1164c94e0dadff5b49b245f614930aa"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.43.0/direct-runner-3.43.0-linux-x64.tar.gz"
      sha256 "8b35766014428ac9e04bf57ce45154f7887d1a246974e4b351e55db0582ba92c"
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

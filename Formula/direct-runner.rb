class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.132.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.132.1/direct-runner-3.132.1-osx-arm64.tar.gz"
      sha256 "47b11dabeeb7f232db7fb55bc3df5d99f6c3f01d2f12406cae93054cdd12a92f"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.132.1/direct-runner-3.132.1-osx-x64.tar.gz"
      sha256 "c795a08a3d3e5f660688efa51a84c37596c8e59b342c8ce68cd559d62f9979e7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.132.1/direct-runner-3.132.1-linux-arm64.tar.gz"
      sha256 "01c626ce5f247befd16ce894b710b1f92db1971e3a1011ab8e7690eb8b0e827d"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.132.1/direct-runner-3.132.1-linux-x64.tar.gz"
      sha256 "f2497e9bd0d3a1693f31654e5b338a8ec314ffef1b7c781c6f8ac9899ba58e73"
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

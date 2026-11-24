class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.145.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.1/direct-runner-3.145.1-osx-arm64.tar.gz"
      sha256 "50806bddea8b68eea4ed47102a3388bb44250a0ee134af1a3232e7ff599faaae"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.1/direct-runner-3.145.1-osx-x64.tar.gz"
      sha256 "fade1e91b3b0b51f87c97d221179c979a9ab73f8cfedf5be5c3be5d14a3a98d8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.1/direct-runner-3.145.1-linux-arm64.tar.gz"
      sha256 "e671fda992919fac23db5c62375f478a5ea5bba112f745620484b1c1f52df74f"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.1/direct-runner-3.145.1-linux-x64.tar.gz"
      sha256 "874ecdf67adcff61729264b51a73a204647f4fd46731447d57b79cd8211fb7eb"
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

class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.79.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.79.0/direct-runner-3.79.0-osx-arm64.tar.gz"
      sha256 "5c311cb381997d848597429f420d1679040bcd18f8f035d21027cd704ee05ae5"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.79.0/direct-runner-3.79.0-osx-x64.tar.gz"
      sha256 "f37fea17e2b2c47cb1ab49a234994725f1d81f6ae4d0d0a860db3dac60244ffd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.79.0/direct-runner-3.79.0-linux-arm64.tar.gz"
      sha256 "5651a25785c1f3696cee28525dd34fabb9278151001c0009dd45a7cc35432cec"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.79.0/direct-runner-3.79.0-linux-x64.tar.gz"
      sha256 "0e34f86335e886f62e0769e7e2d507439d4b31f78f804a3840f102e744d2ea2f"
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

class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.58.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.58.1/direct-runner-3.58.1-osx-arm64.tar.gz"
      sha256 "97e2b81a6d1c4e80ed490517b40b396c6d5e54c7127abb0851f7789a95045158"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.58.1/direct-runner-3.58.1-osx-x64.tar.gz"
      sha256 "710cab1ef38c1826f5498cade3387f09f8b1269821d0023a90f2805562d1f6fe"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.58.1/direct-runner-3.58.1-linux-arm64.tar.gz"
      sha256 "6c4b53b7eb0a15545a50a509b8a7d6c9bc0db1b8031c4d6475e3df0141762ded"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.58.1/direct-runner-3.58.1-linux-x64.tar.gz"
      sha256 "b120b13dce6a85dc5b1551ca7c975774f0ecffdebd70bc6755783e6d10f62695"
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

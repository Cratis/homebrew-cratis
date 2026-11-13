class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.86.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.86.0/direct-runner-3.86.0-osx-arm64.tar.gz"
      sha256 "ebe667db7753e88f50f30e5a61bef84fbf7a4f5e2619ca5010025e46a2141b24"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.86.0/direct-runner-3.86.0-osx-x64.tar.gz"
      sha256 "429f7f6281c12d939941ad313056b2ed703b03fe4be0ad65de2237ddd959d07b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.86.0/direct-runner-3.86.0-linux-arm64.tar.gz"
      sha256 "78f569208edddcc89ee950d4149fcebf688476b3af18aa1970ffadd9620b9d8d"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.86.0/direct-runner-3.86.0-linux-x64.tar.gz"
      sha256 "4e0e070f7b3fbd9271dd0b60c3e84f39e251a93d8119e33fea76462f6396ac54"
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

class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.135.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.135.0/direct-runner-3.135.0-osx-arm64.tar.gz"
      sha256 "65baf44a6abb2348096716fb7a1bfcf5a138a6bf9b6e691b79776c95e06b4691"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.135.0/direct-runner-3.135.0-osx-x64.tar.gz"
      sha256 "d1a3a30a6c64cdb01a4cc5e3e835e0b505e1c9633a6ca1f8e572c93d5bd0b3f5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.135.0/direct-runner-3.135.0-linux-arm64.tar.gz"
      sha256 "421a8cb926aeaff8cc546118245434ed209f789676581a62d1bce30defe52086"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.135.0/direct-runner-3.135.0-linux-x64.tar.gz"
      sha256 "edc301affd27fe1383be22674a47df0ba37857c808d810ca8e7a257fc81172a3"
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

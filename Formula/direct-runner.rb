class DirectRunner < Formula
  desc "Runs Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.33.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.33.0/direct-runner-3.33.0-osx-arm64.tar.gz"
      sha256 "c328213d9130563dfd24cf8bf7040dc622d6530008afd18df495293d6ce6e0ff"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.33.0/direct-runner-3.33.0-osx-x64.tar.gz"
      sha256 "cca8a3247d8e915b1c73e405c09b38f41c79649f070d74fc9295a657f2e981a6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.33.0/direct-runner-3.33.0-linux-arm64.tar.gz"
      sha256 "63a0a0a5785e4e6312fc6c89dee375430d09c95eb041678253b5bbc6b702a06f"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.33.0/direct-runner-3.33.0-linux-x64.tar.gz"
      sha256 "08eeae4295b6d9691b3ebe685445ae5d5f206ae2dc3486caa2d3d9b430f1554d"
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

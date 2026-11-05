class DirectRunner < Formula
  desc "Runs Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.20.3"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.20.3/direct-runner-3.20.3-osx-arm64.tar.gz"
      sha256 "a8a340367889ac4127ffef5208aa4588e7697c705df0258f293d3d6a113980f6"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.20.3/direct-runner-3.20.3-osx-x64.tar.gz"
      sha256 "aace7811d8fa8e4d166389b14286534636743a1906ecc098137a4bf3bf72ad76"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.20.3/direct-runner-3.20.3-linux-arm64.tar.gz"
      sha256 "8150ff73f7fefa5b7891ebe0bc0c6b60b2c9809179a8c051aa7713cf55d4aea0"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.20.3/direct-runner-3.20.3-linux-x64.tar.gz"
      sha256 "425d1178e32960ee12ba62fa17dd1904107d35a51073649edc8c28993fdc4531"
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

class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.35.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.35.1/direct-runner-3.35.1-osx-arm64.tar.gz"
      sha256 "1365671c41945b80e7865fe492c1dc3ea6f5fe81cdbd2acc7b3d561c71962633"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.35.1/direct-runner-3.35.1-osx-x64.tar.gz"
      sha256 "32abf8864b848ae17ed17d7b512498c49f98909149f681e51763687056be35d4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.35.1/direct-runner-3.35.1-linux-arm64.tar.gz"
      sha256 "131fe487a6cb6ac290d760ceee8ed9daaa0f657516a11f30eb14233dfd30ce8c"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.35.1/direct-runner-3.35.1-linux-x64.tar.gz"
      sha256 "9e738d22c75ef78d1331a6897aacb0b912353b83f2da826d1d59c7c7b0c0b1af"
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

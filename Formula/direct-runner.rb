class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.77.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.77.0/direct-runner-3.77.0-osx-arm64.tar.gz"
      sha256 "79f4b20445ad4869fc5cc39a1fc28c72dd99a06381b7dd28829d6a05bdbf263d"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.77.0/direct-runner-3.77.0-osx-x64.tar.gz"
      sha256 "f133248d712eedc4acf62eefe69956d92ac746f6b6f2350de4d3fe8f3dbb7127"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.77.0/direct-runner-3.77.0-linux-arm64.tar.gz"
      sha256 "df52c0c072c9dbd1f4cb423dd9ae27d19340c1c3acbb4e839dc676d1becde7e7"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.77.0/direct-runner-3.77.0-linux-x64.tar.gz"
      sha256 "b9b271e6ee0c5e0de92427480e50bce632ba35fde2d868f716b8030300fbd226"
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

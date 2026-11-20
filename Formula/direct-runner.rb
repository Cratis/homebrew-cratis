class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.137.6"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.6/direct-runner-3.137.6-osx-arm64.tar.gz"
      sha256 "729fe0c95a4b0ba2d8087c14cf2fa0f6ff8d6004e44c6a8c2c2f0d50c2ba029f"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.6/direct-runner-3.137.6-osx-x64.tar.gz"
      sha256 "b567486a284092daf7a2100200fed2e7142c49130a654187f5dbbe4ab8ebbc6b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.6/direct-runner-3.137.6-linux-arm64.tar.gz"
      sha256 "913346ff4c3e8b41a2b0e3644d8aa4d22c49956132b4eda20ce8fa5f87d706a9"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.6/direct-runner-3.137.6-linux-x64.tar.gz"
      sha256 "b27276d3f9f66e67b692e4b7501b2b20a53b97d3bc2d4df2db0aba1fd585c24c"
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

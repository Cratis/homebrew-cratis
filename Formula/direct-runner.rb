class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.85.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.85.0/direct-runner-3.85.0-osx-arm64.tar.gz"
      sha256 "683b4947d9bc51d4185c9d67e3c1eac85b598ab5d925e11e787e43c781b5e3b4"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.85.0/direct-runner-3.85.0-osx-x64.tar.gz"
      sha256 "b87736b86d682e5510be7fe9799c3d5e2a6d07fc6f034e0f2e45c219bb5446bc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.85.0/direct-runner-3.85.0-linux-arm64.tar.gz"
      sha256 "ad3affa365118d0a1d4327ce3915fb7cf2aa1e73eaec38b16df667b3018fb1b6"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.85.0/direct-runner-3.85.0-linux-x64.tar.gz"
      sha256 "9bc6e3e871f4589e30c0b127e97514ecd3e2287c4aa301d9928a9055d580e81f"
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

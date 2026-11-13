class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.83.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.83.0/direct-runner-3.83.0-osx-arm64.tar.gz"
      sha256 "a9cedb86e4e0bfa63e4333eaab28acde32f36867a9f56352c4330dd6be0c0a99"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.83.0/direct-runner-3.83.0-osx-x64.tar.gz"
      sha256 "0d5075b2564516bf332083965f9e9aa8e04e2396745e23773a060dddd89ec849"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.83.0/direct-runner-3.83.0-linux-arm64.tar.gz"
      sha256 "e1ba3acd99d96229c15435449233123177a509e8267e7c9d40c2b5b5811ba1c8"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.83.0/direct-runner-3.83.0-linux-x64.tar.gz"
      sha256 "6784ee3adb35153f06f13780225067563ef67fb7cb3e07748648a9c10cb44d5a"
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

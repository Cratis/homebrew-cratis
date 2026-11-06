class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.38.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.38.0/direct-runner-3.38.0-osx-arm64.tar.gz"
      sha256 "72aab5e1d15df9a49d23108b4b8a3cd404d818d239c2f1c94e58378f30cce2f7"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.38.0/direct-runner-3.38.0-osx-x64.tar.gz"
      sha256 "9c6c468a6f89935d93cf88bb3e7c076d494611c4634b29e1e589b374399fef18"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.38.0/direct-runner-3.38.0-linux-arm64.tar.gz"
      sha256 "bec77a6ea0291fcd9bddb3170f694d5352c077b08d6b1929e0c5603a2b6864a3"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.38.0/direct-runner-3.38.0-linux-x64.tar.gz"
      sha256 "76d1db967206adb43b5a393e5676a2d0fd69d03ef2fdc0ae2464cd34f3612972"
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

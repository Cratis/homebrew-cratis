class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.56.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.56.1/direct-runner-3.56.1-osx-arm64.tar.gz"
      sha256 "3799bc195d957ddbd3d5a8eb2d549920cb78bb49763058386ee19643c029270f"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.56.1/direct-runner-3.56.1-osx-x64.tar.gz"
      sha256 "04bfa42299b589c9a19af51e5b2659045d00972c4a5fbf7927c3514d867ebfb4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.56.1/direct-runner-3.56.1-linux-arm64.tar.gz"
      sha256 "11a7d39f3d0ecce5b8f87d034c52232a428ee7a345d0536e5745df6178279ed3"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.56.1/direct-runner-3.56.1-linux-x64.tar.gz"
      sha256 "66f49cb1dce6f05bb75e278d41142c5a2e3d85a7cbb6f5581640a85698c239b5"
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

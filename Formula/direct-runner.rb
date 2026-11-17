class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.127.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.127.2/direct-runner-3.127.2-osx-arm64.tar.gz"
      sha256 "ce82e7559de0e6beb046214474d8a44b293e914a7c9dcf10763e89fb88d1ece5"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.127.2/direct-runner-3.127.2-osx-x64.tar.gz"
      sha256 "9ccc855de2121c7fcf556891bc8b094940d3716c1f157cd3db2faf375098a388"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.127.2/direct-runner-3.127.2-linux-arm64.tar.gz"
      sha256 "0e0873e644e0886981b8079b5eb63ccfd6517ef4aaa04a0361ce7f0451256671"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.127.2/direct-runner-3.127.2-linux-x64.tar.gz"
      sha256 "293520e74b12e4d63389a69006716ee04014179a36cf33b6da65e330d0f9c938"
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

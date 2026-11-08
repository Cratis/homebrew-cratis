class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.46.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.46.1/direct-runner-3.46.1-osx-arm64.tar.gz"
      sha256 "08b1cd49c6fcc91bfde70f9dc4b99aad41d462cec5f19222d50b39c7354ddab0"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.46.1/direct-runner-3.46.1-osx-x64.tar.gz"
      sha256 "5fb97cc6d30cb70e42b3fe93e45806e2b856ae16907c62061e1f72d5cf07abbc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.46.1/direct-runner-3.46.1-linux-arm64.tar.gz"
      sha256 "388f5590b9e60462a05e6b2669085160fff69fd1445a48482fe92939d340a6c1"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.46.1/direct-runner-3.46.1-linux-x64.tar.gz"
      sha256 "782adf4e37bb567e9a7ae2ebe25d6fcab8bd9e92dd6b1dab040fd40425597959"
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

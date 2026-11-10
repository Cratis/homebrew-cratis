class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.59.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.59.1/direct-runner-3.59.1-osx-arm64.tar.gz"
      sha256 "8a344c15932d93d8f6b7a7105ef6bdb524c15e35870e4b1ddfff67f062c59f88"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.59.1/direct-runner-3.59.1-osx-x64.tar.gz"
      sha256 "d6a8327d696a5afc1112f30e8cae62341732993ea54d048fdd10aa4c0ea63005"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.59.1/direct-runner-3.59.1-linux-arm64.tar.gz"
      sha256 "4e9d06db2236d8c3edf6cbf2e83e374968a3129fc4159125b1722e56cb9431ed"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.59.1/direct-runner-3.59.1-linux-x64.tar.gz"
      sha256 "edc9ad71d9b1759535d42cc07e266ef5b5cae5fc4e203a74e5136e888c015280"
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

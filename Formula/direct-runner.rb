class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.58.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.58.2/direct-runner-3.58.2-osx-arm64.tar.gz"
      sha256 "5ca91e13dff182b138bb96ab744275fa1486d19a673fe2ea96a29de3a9dd055b"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.58.2/direct-runner-3.58.2-osx-x64.tar.gz"
      sha256 "2de796a0f93bc9ddda90ac710fb0b917982b4de949863fd7b9ecc3569795a47f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.58.2/direct-runner-3.58.2-linux-arm64.tar.gz"
      sha256 "606791b28bcca61fc3524201762fc63da77205f3b002063da42cdaa3b49226d8"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.58.2/direct-runner-3.58.2-linux-x64.tar.gz"
      sha256 "5878b405a07bf44f4112e357d6fcf9cc6f8914cfc0cdd3723b7cae0f474291d6"
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

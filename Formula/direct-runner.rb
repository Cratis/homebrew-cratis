class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.78.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.78.0/direct-runner-3.78.0-osx-arm64.tar.gz"
      sha256 "0c096d2571b24eabcd8a322d044732f2a40424687a90bdeb8033d8bdd51cd403"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.78.0/direct-runner-3.78.0-osx-x64.tar.gz"
      sha256 "9ab424fc8d3ea215f46ffd5ce7d62ac664c2b617ad5faef36a4d112e33950455"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.78.0/direct-runner-3.78.0-linux-arm64.tar.gz"
      sha256 "fb6a5e05f913bef54a70a0a7c815d24b870bdfcbe02d8600fb553f92fd37549f"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.78.0/direct-runner-3.78.0-linux-x64.tar.gz"
      sha256 "6d08c09c3051a6534200d2977bfa58253ca31522ff3e7f70bc683e7d93a6c8f4"
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

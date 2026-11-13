class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.82.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.82.0/direct-runner-3.82.0-osx-arm64.tar.gz"
      sha256 "84c56e994b4a3f868fc4057c48f7c6b087fd84a57aa643b033a07be115e1012b"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.82.0/direct-runner-3.82.0-osx-x64.tar.gz"
      sha256 "5502b869f9879fe920e1c3ab64ad7d33fbef71db33e2e6f4c6535880ea260485"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.82.0/direct-runner-3.82.0-linux-arm64.tar.gz"
      sha256 "737b03318fe01780f700860afac65366f9383dc7927bd1b6c70eb8832c86ceed"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.82.0/direct-runner-3.82.0-linux-x64.tar.gz"
      sha256 "0a9c706a4af6b07d7541e291214d9bb68bbd16771846d4b16aed99d2fe3bd5cc"
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

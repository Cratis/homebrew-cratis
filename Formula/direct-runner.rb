class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.42.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.42.0/direct-runner-3.42.0-osx-arm64.tar.gz"
      sha256 "dec0d56ddabcd1799a24b1acbbc0167f0b980e08fb42ee91bfc294aa1c74fae5"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.42.0/direct-runner-3.42.0-osx-x64.tar.gz"
      sha256 "1d1b2dbe67141680d46f71900ff2510db57a7d2af80373db1c7836d03e1c537a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.42.0/direct-runner-3.42.0-linux-arm64.tar.gz"
      sha256 "cf5873f6dff23c1ea690851789f4a9b08d040d5a91107c805f2ebdeea21182e9"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.42.0/direct-runner-3.42.0-linux-x64.tar.gz"
      sha256 "bca3577dc97f5a5ac81367e2302cdda00428f82e420ad37f96cf43f4fdf83637"
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

class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.109.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.109.0/direct-runner-3.109.0-osx-arm64.tar.gz"
      sha256 "2b8f02d1745eadf6f01010070be69d98d5db1d19c0cf4fdd1e28af55044039d8"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.109.0/direct-runner-3.109.0-osx-x64.tar.gz"
      sha256 "bebd84128b115b546be82a8487b5bdfb5b40e818367e4721efe11cfc6eb9d8c7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.109.0/direct-runner-3.109.0-linux-arm64.tar.gz"
      sha256 "129623721f384cd91b3bb056050b98efe368f341427bd26a12dade29325ef559"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.109.0/direct-runner-3.109.0-linux-x64.tar.gz"
      sha256 "58c8b3b036efed6de70cb09407e450139beb0fd58326d2fd88288991745efe52"
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

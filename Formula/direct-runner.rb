class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.40.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.40.2/direct-runner-3.40.2-osx-arm64.tar.gz"
      sha256 "15b73e97155bf544a998cc2dba69633bb10ba6b30dc2bbcf9689d1f36e8b4b2f"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.40.2/direct-runner-3.40.2-osx-x64.tar.gz"
      sha256 "2effe921898e9e202f13eb2033b54bfe472b9e7269849e79c6edaeba4ef97400"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.40.2/direct-runner-3.40.2-linux-arm64.tar.gz"
      sha256 "4d058cd8e664865b8754d1a59ab4023e7b21816492337e94c87d57c5cfc97fb7"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.40.2/direct-runner-3.40.2-linux-x64.tar.gz"
      sha256 "df84fc5b2feb7875dfe21a99b78ca84a951968e9facf57e3fac35565285ae2b9"
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

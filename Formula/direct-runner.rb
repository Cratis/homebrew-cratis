class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.75.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.75.0/direct-runner-3.75.0-osx-arm64.tar.gz"
      sha256 "07ba11d96304f82e452744c31a6e1db6e6ce87d92e74ce7ca6ec23816bdd1e70"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.75.0/direct-runner-3.75.0-osx-x64.tar.gz"
      sha256 "3483aea0b8b0dd25333a9b867d260524a3809b09d9bd7edc473ae01f4b90d9e2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.75.0/direct-runner-3.75.0-linux-arm64.tar.gz"
      sha256 "6814f54cbc131aeacc58c2178b3f210b2993f00a5164f7db3e56634faea710ea"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.75.0/direct-runner-3.75.0-linux-x64.tar.gz"
      sha256 "18dac474783aac5f45f70a72bec721dc9ec201143dfd3a4cd92975451b4aa914"
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

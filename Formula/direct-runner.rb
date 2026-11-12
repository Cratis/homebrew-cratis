class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.67.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.67.1/direct-runner-3.67.1-osx-arm64.tar.gz"
      sha256 "0a218613e7bb09b25469c55ae3b3cf0b619425aa068956ce71a4a3ac93ea4610"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.67.1/direct-runner-3.67.1-osx-x64.tar.gz"
      sha256 "f89da80ecef8bb6bda81731e551aa8b7b2abd24d667e72feac9e6ce3d048535e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.67.1/direct-runner-3.67.1-linux-arm64.tar.gz"
      sha256 "2be4777f9d720e48a0354c4af8269e781a2aa00466d7f669d5c1c1145ebde214"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.67.1/direct-runner-3.67.1-linux-x64.tar.gz"
      sha256 "e835db90d01206bf8de22b23001b4e19eb0559c081fb8a2108a371e693478a10"
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

class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.55.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.55.0/direct-runner-3.55.0-osx-arm64.tar.gz"
      sha256 "84d047e844edd08c0152bc9956455fca7a06b3fe04f86f87a60e8b83a711c360"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.55.0/direct-runner-3.55.0-osx-x64.tar.gz"
      sha256 "5d9455df07d59eca1ee63e14edb7d22539ec8ae702cac6e5ffb083c4c89e91a4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.55.0/direct-runner-3.55.0-linux-arm64.tar.gz"
      sha256 "820999954dacc641b35f0a368376428fd79b6269ff88b94702aaa196e9047693"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.55.0/direct-runner-3.55.0-linux-x64.tar.gz"
      sha256 "353e4c607f2e5aa260f8295cfafae243c0dc072056e64db60c34360ebac11ac8"
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

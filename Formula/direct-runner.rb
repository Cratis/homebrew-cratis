class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.68.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.68.1/direct-runner-3.68.1-osx-arm64.tar.gz"
      sha256 "b0e2ac3d25c72c51a62504a80d96fea366ef6c4e611befaf2215862783b7f1d1"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.68.1/direct-runner-3.68.1-osx-x64.tar.gz"
      sha256 "929b9e256cb1b86f81d4c3a4370e5a9f022566a5cdaf8cc2b137c1b9c3d91afc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.68.1/direct-runner-3.68.1-linux-arm64.tar.gz"
      sha256 "149e44b8e2d58cd82f71274e435c386e4a17907ba4ec9a0ad870fe0666ade6ab"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.68.1/direct-runner-3.68.1-linux-x64.tar.gz"
      sha256 "d23bcef4da55f3aaf5bd06f87662bbd874f50d799d755cd98ca0ab7184b7011c"
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

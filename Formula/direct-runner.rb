class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.64.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.64.0/direct-runner-3.64.0-osx-arm64.tar.gz"
      sha256 "78b6c04750bbae7d59eed9fa44d1153de9fe9c1ad2771f582adf72d4c12d7cef"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.64.0/direct-runner-3.64.0-osx-x64.tar.gz"
      sha256 "eb5d57133140b9f236f7468afd2a19108a7df6a2fda25e3bcb75ab9c8d5c6857"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.64.0/direct-runner-3.64.0-linux-arm64.tar.gz"
      sha256 "c0aa195fc884bedc443224d613ea7eb422dc1295196ee517a760cd717ce91915"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.64.0/direct-runner-3.64.0-linux-x64.tar.gz"
      sha256 "b852c642d0a24c1f4a98e47c0225eb550c10566c409b7fd0eb8d923f4533c88f"
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

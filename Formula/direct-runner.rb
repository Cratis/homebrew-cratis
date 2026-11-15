class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.110.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.110.2/direct-runner-3.110.2-osx-arm64.tar.gz"
      sha256 "2be1d25b053fb79b890a0af437855f11aa105099b6e7200264e92ad5f96c750d"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.110.2/direct-runner-3.110.2-osx-x64.tar.gz"
      sha256 "68ebe6459075a3d7483bd044c5e25f9bd24d48acd654badd2cc778ab592ed203"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.110.2/direct-runner-3.110.2-linux-arm64.tar.gz"
      sha256 "046913fb6260ee6f16fa7ad9b2962d52024f5ad1ad2190e99cb5b9b45ff30a54"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.110.2/direct-runner-3.110.2-linux-x64.tar.gz"
      sha256 "f687f00c1d6df1daf6cc5eca861504e09bbddb136dd12d152e2dc090524267ad"
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

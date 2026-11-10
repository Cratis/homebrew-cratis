class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.59.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.59.0/direct-runner-3.59.0-osx-arm64.tar.gz"
      sha256 "637fcf6e6ea57e243caf0d69f7611a2f6d4c5ba0084683b47019ae6fc712aed6"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.59.0/direct-runner-3.59.0-osx-x64.tar.gz"
      sha256 "a04b32bffe81ad223b5a51dc1792bf5251c3595c36a80b82e1ab9a58176a1aae"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.59.0/direct-runner-3.59.0-linux-arm64.tar.gz"
      sha256 "d159965612321368318d684ac2139b2ed91e6e07e86013316c3d1b24dd09ed95"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.59.0/direct-runner-3.59.0-linux-x64.tar.gz"
      sha256 "d1f4996eec75ded38089f72d9dfd498c180671bffa9558bc858fabe6c5c9b735"
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

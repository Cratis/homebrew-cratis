class DirectRunner < Formula
  desc "Runs Direct's agents on your own machine"
  homepage "https://www.cratis.io/direct/runner/getting-started/"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v1.0.0/direct-runner-1.0.0-osx-arm64.tar.gz"
      sha256 "d7acb85c0a3c51f5c0b8cd73ec2cf5bf39eaeeb1dec3e6cd6b41414c0ff9234d"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v1.0.0/direct-runner-1.0.0-osx-x64.tar.gz"
      sha256 "632ed4f1a14fc7aca0cfc82e274d55a4603ca483bf3971cf7116dc1b468d2ac0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v1.0.0/direct-runner-1.0.0-linux-arm64.tar.gz"
      sha256 "a03390c51c644921d0abc011d0b1500b825f6f8f9a2ecba4f4591c771c76cd61"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v1.0.0/direct-runner-1.0.0-linux-x64.tar.gz"
      sha256 "464b83394b3c7c9b54b78b7fb46bd4e8a7186a2a137a30995484b15630a35bec"
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

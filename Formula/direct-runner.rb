class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.37.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.37.0/direct-runner-3.37.0-osx-arm64.tar.gz"
      sha256 "f42673be6e8c596d15300cabde625516af01e3803df587bb49902aebfb5bcabe"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.37.0/direct-runner-3.37.0-osx-x64.tar.gz"
      sha256 "4e5fe60d06cc7d54ca134db7fae28930e38dc65281c8e051abdc77f52b0c0a52"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.37.0/direct-runner-3.37.0-linux-arm64.tar.gz"
      sha256 "0aacb5707288e9aafbe8ff8d37761bca4cca5c495e2ec2bbb68fbbe4a84c736d"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.37.0/direct-runner-3.37.0-linux-x64.tar.gz"
      sha256 "4cebcc974374524b1af7c99abd557b6e351ea744d0dd09b3d7028a747e2156bd"
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

class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.116.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.116.0/direct-runner-3.116.0-osx-arm64.tar.gz"
      sha256 "0b300af77a91a8afa81acae74f245bf0497946fcc4dc290c96069a60bc8adb10"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.116.0/direct-runner-3.116.0-osx-x64.tar.gz"
      sha256 "fc6a0ecaf309e58d574b57f05fac3cb006508851d494d7b1290d4324860478e0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.116.0/direct-runner-3.116.0-linux-arm64.tar.gz"
      sha256 "3862c978ebc402c0e7c95b5bc4d18602a70745048f4c9b2a3e262c50ff6ec1b7"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.116.0/direct-runner-3.116.0-linux-x64.tar.gz"
      sha256 "98ea6a0d2f8fd425b044cc033fed98b1a044e2905ac2eb723737536bbe91ad4d"
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

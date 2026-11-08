class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.44.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.44.0/direct-runner-3.44.0-osx-arm64.tar.gz"
      sha256 "374ed837d91569bd76b5d1beeceea09e392591686385649159b233669fa0766a"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.44.0/direct-runner-3.44.0-osx-x64.tar.gz"
      sha256 "e3917a92fdad6458bea0286f599dc8d329637c6ef77526618446293efe829114"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.44.0/direct-runner-3.44.0-linux-arm64.tar.gz"
      sha256 "8172ffe2b776a36a0eb0fba2b0f96c455cd8f3459e99963127db2354e9b5685e"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.44.0/direct-runner-3.44.0-linux-x64.tar.gz"
      sha256 "e26aa9ee966164abca5b86e0c1cc8b78d32a62d0d8ee2b61272d77cc37279869"
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

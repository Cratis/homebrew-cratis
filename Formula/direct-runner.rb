class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.60.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.60.1/direct-runner-3.60.1-osx-arm64.tar.gz"
      sha256 "a94b92844a561185787d72410e77d350502b2bc938da8c518cab7a8bbac65b06"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.60.1/direct-runner-3.60.1-osx-x64.tar.gz"
      sha256 "0f85224f5c8f6ea4f38366a439675186b196daf101bbbc2ad83d739fa1201f65"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.60.1/direct-runner-3.60.1-linux-arm64.tar.gz"
      sha256 "4133340a8eef630a9e5ed6ac9c344524034195f1be02b0a7214d4d3c41796a0b"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.60.1/direct-runner-3.60.1-linux-x64.tar.gz"
      sha256 "bb20bf0b4cfe618af22b5374594968780f77802ac0cad44a14155cd67e1e2ca3"
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

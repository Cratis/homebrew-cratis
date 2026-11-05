class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.35.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.35.2/direct-runner-3.35.2-osx-arm64.tar.gz"
      sha256 "db9e6dc89b277472c61762c2fa077a6253b8bedf28af693c022d2e9d04f58434"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.35.2/direct-runner-3.35.2-osx-x64.tar.gz"
      sha256 "ad3985990b31b10f9ea5efc23fa07f8154b03f7c1c4324a8fba54112eb9c7126"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.35.2/direct-runner-3.35.2-linux-arm64.tar.gz"
      sha256 "63ff586cf0c4dadcaffb73ae809ab6b1de81b7eebea7422fd5c49bff8f121515"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.35.2/direct-runner-3.35.2-linux-x64.tar.gz"
      sha256 "ea8e8d1f15d9ba62efc2524a41e54bf671dfd1dc8b97d3b0bcac68871dd02548"
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

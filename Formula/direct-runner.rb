class DirectRunner < Formula
  desc "Runs Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.33.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.33.2/direct-runner-3.33.2-osx-arm64.tar.gz"
      sha256 "8db6bea101f31042168b1bbacc672e48117592e2375501b2601d6412cfdf406b"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.33.2/direct-runner-3.33.2-osx-x64.tar.gz"
      sha256 "0d5431285c5283df08e381bb2203055296e4ee12275dfaf3e14591ee61b79050"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.33.2/direct-runner-3.33.2-linux-arm64.tar.gz"
      sha256 "fec73382d7c85997e3a9c9f4d2c1a19b466ea0b5c197e62521bbd292dc5dc022"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.33.2/direct-runner-3.33.2-linux-x64.tar.gz"
      sha256 "91c41c3dd26363d86aeb74e2a6f40e49c0ce69448cc37b68c4289e7c10649d71"
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

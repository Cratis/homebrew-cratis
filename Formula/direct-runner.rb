class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.66.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.66.0/direct-runner-3.66.0-osx-arm64.tar.gz"
      sha256 "4935b6185b97f93e9ffc1d6885a7c2ffd1dc163cb1ff1dc8ca36d054a8687678"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.66.0/direct-runner-3.66.0-osx-x64.tar.gz"
      sha256 "07b78f8e861b38694e907cb206ba18baa8815a02aae941d027d729e11e80ec6a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.66.0/direct-runner-3.66.0-linux-arm64.tar.gz"
      sha256 "f50ad19a6a05c216e628a2d0522d5ee4c6043ec0f65bdd496d8fffdf5b5fda23"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.66.0/direct-runner-3.66.0-linux-x64.tar.gz"
      sha256 "a34e668d7503b5e413830ad43fdd6af8dcf70afcad23dff9febbe34009d57a5e"
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

class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.58.3"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.58.3/direct-runner-3.58.3-osx-arm64.tar.gz"
      sha256 "53139f8e46828a278579581a2b93c33cfc087b658287bfa009617b2a3d67a190"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.58.3/direct-runner-3.58.3-osx-x64.tar.gz"
      sha256 "a3a27c280c9a35817863a9604ea5cb921bc6905aa008ef392dc45ac1e0e7d653"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.58.3/direct-runner-3.58.3-linux-arm64.tar.gz"
      sha256 "d1ce60043a180d6a1ac4cc393bc6a83ec1fd22f388ade1da8a6764441921cb47"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.58.3/direct-runner-3.58.3-linux-x64.tar.gz"
      sha256 "78249d65f7f08e052e779393bd1917e81201750686bf47e95e0283e9b2b9130e"
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

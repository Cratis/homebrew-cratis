class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.8.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.8.0/cratis-2.8.0-osx-arm64.tar.gz"
      sha256 "4cfd222333c6998e96c7903e38a3d254c144e75fd449043fd131ec49d3c86f2e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.8.0/cratis-2.8.0-osx-x64.tar.gz"
      sha256 "8dd10b0da7337492a64bee22913bf8d25ef0fda1f50bfa1f4dfe96b966257cd6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.8.0/cratis-2.8.0-linux-arm64.tar.gz"
      sha256 "f45c1d7c345445253842a12b68542d11705f6132f8fb062cfee28e647264cbbb"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.8.0/cratis-2.8.0-linux-x64.tar.gz"
      sha256 "169f683ee4d959d19b133f435cbba501617984fe8eb70623def52ad48aeaff65"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

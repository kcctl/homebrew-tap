class Kcctl < Formula
  desc "kcctl -- A CLI for Apache Kafka Connect"
  homepage "https://github.com/kcctl/kcctl"
  version "1.0.0.Alpha4"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kcctl/kcctl/releases/download/v1.0.0.Alpha4/kcctl-1.0.0.Alpha4-linux-x86_64.zip"
    sha256 "b499cc47c83c25df9541c92a2dd36e458988c7cfe76aac3d009192bf6ef6b3e7"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kcctl/kcctl/releases/download/v1.0.0.Alpha4/kcctl-1.0.0.Alpha4-osx-x86_64.zip"
    sha256 "f3649b1d55c6dcf5efc24f8b45d528ca418224c5f18dab13d30bef854ede6907"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kcctl"
  end

  test do
    output = shell_output("#{bin}/kcctl --version")
    assert_match "1.0.0.Alpha4", output
  end
end

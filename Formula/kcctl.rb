class Kcctl < Formula
  desc "kcctl -- A CLI for Apache Kafka Connect"
  homepage "https://github.com/kcctl/kcctl"
  version "1.0.0.Alpha5"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kcctl/kcctl/releases/download/v1.0.0.Alpha5/kcctl-1.0.0.Alpha5-linux-x86_64.zip"
    sha256 "669006978af4599da25221fbeaabf6cd956061238a3a1ab452435f0b574d16a8"
  end
  if OS.mac?
    url "https://github.com/kcctl/kcctl/releases/download/v1.0.0.Alpha5/kcctl-1.0.0.Alpha5-osx-x86_64.zip"
    sha256 "562e59dd6890567492eb4f43a2dc64c45caf78d7f7794039a1a179c0e7af9fbb"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kcctl"
  end

  test do
    output = shell_output("#{bin}/kcctl --version")
    assert_match "1.0.0.Alpha5", output
  end
end

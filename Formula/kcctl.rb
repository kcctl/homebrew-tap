# Generated with JReleaser 1.7.0 at 2023-08-04T12:51:50.500876168Z
class Kcctl < Formula
  desc "kcctl -- A CLI for Apache Kafka Connect"
  homepage "https://github.com/kcctl/kcctl"
  version "1.0.0.CR1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kcctl/kcctl/releases/download/v1.0.0.CR1/kcctl-1.0.0.CR1-linux-x86_64.zip"
    sha256 "353bd19716eee0783eec616ab60350189bc0d8024ded9588caba53d9db1ec936"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kcctl/kcctl/releases/download/v1.0.0.CR1/kcctl-1.0.0.CR1-osx-x86_64.zip"
    sha256 "be450cb6c89d63cdbba3c0040ef483bd6f6910c994a74126156082cfe41d3b3a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kcctl/kcctl/releases/download/v1.0.0.CR1/kcctl-1.0.0.CR1-osx-x86_64.zip"
    sha256 "be450cb6c89d63cdbba3c0040ef483bd6f6910c994a74126156082cfe41d3b3a"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kcctl" => "kcctl"
  end

  test do
    output = shell_output("#{bin}/kcctl --version")
    assert_match "1.0.0.CR1", output
  end
end

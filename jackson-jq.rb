class JacksonJq < Formula
  desc "Jackson jq command line JSON processor"
  homepage "https://github.com/eiiches/jackson-jq"
  version "0.0.6"
  url "http://central.maven.org/maven2/net/thisptr/jackson-jq-cli/0.0.6/jackson-jq-cli-0.0.6.jar"
  sha256 "abe009c0dc0de5e17e909add0f5a1b51884618b0d800bad2f287f56e93a18960"

  bottle :unneeded

  def install
    libexec.install "jackson-jq-cli-#{version}.jar"
    bin.write_jar_script libexec/"jackson-jq-cli-#{version}.jar", "jackson-jq"
  end
end

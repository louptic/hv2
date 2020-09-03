require "language/node"

class Api < Formula
  desc "The Optic CLI"
  homepage "https://github.com/opticdev/optic"
  url "https://registry.npmjs.org/@useoptic/cli/-/cli-8.3.0.tgz"
  version "8.3.0"
  sha256 "b03adc2da046c9c23da404296f43f52e0711d76f92adf3989e4c38486d50c9f7"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end

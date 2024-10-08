# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HelmS3Publisher < Formula
  desc "Go Modeler is a small CLI and Library that brings the powerful features of the golang template into a simplified form."
  homepage "https://github.com/toolsascode/helm-s3-publisher"
  version "1.0.0"
  license "Apache License 2.0"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    on_intel do
      url "https://github.com/toolsascode/helm-s3-publisher/releases/download/v1.0.0/helm-s3-publisher_Darwin_x86_64.tar.gz"
      sha256 "22174373ee71e907e9d5bca34d7394caa6c2a88448bd2d9b91e792a40fd7c2a7"

      def install
        bin.install "helm-s3-publisher"
        bash_completion.install "completions/helm-s3-publisher.bash" => "helm-s3-publisher"
        zsh_completion.install "completions/helm-s3-publisher.zsh" => "_helm-s3-publisher"
        fish_completion.install "completions/helm-s3-publisher.fish"
        man1.install "manpages/helm-s3-publisher.1.gz"
      end
    end
    on_arm do
      url "https://github.com/toolsascode/helm-s3-publisher/releases/download/v1.0.0/helm-s3-publisher_Darwin_arm64.tar.gz"
      sha256 "2654f4e33d0e330cf32dcc738c089ac2339c78a802fe309a190e5dab12cfee9f"

      def install
        bin.install "helm-s3-publisher"
        bash_completion.install "completions/helm-s3-publisher.bash" => "helm-s3-publisher"
        zsh_completion.install "completions/helm-s3-publisher.zsh" => "_helm-s3-publisher"
        fish_completion.install "completions/helm-s3-publisher.fish"
        man1.install "manpages/helm-s3-publisher.1.gz"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/toolsascode/helm-s3-publisher/releases/download/v1.0.0/helm-s3-publisher_Linux_x86_64.tar.gz"
        sha256 "7271989f56065a5acec4fb31a506291c16550f959e08cb0c7d73292dfb06be6d"

        def install
          bin.install "helm-s3-publisher"
          bash_completion.install "completions/helm-s3-publisher.bash" => "helm-s3-publisher"
          zsh_completion.install "completions/helm-s3-publisher.zsh" => "_helm-s3-publisher"
          fish_completion.install "completions/helm-s3-publisher.fish"
          man1.install "manpages/helm-s3-publisher.1.gz"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/toolsascode/helm-s3-publisher/releases/download/v1.0.0/helm-s3-publisher_Linux_arm64.tar.gz"
        sha256 "cdec76647bae7b874cd4845d5729aff21f85117292418c954172f2b44f19d13d"

        def install
          bin.install "helm-s3-publisher"
          bash_completion.install "completions/helm-s3-publisher.bash" => "helm-s3-publisher"
          zsh_completion.install "completions/helm-s3-publisher.zsh" => "_helm-s3-publisher"
          fish_completion.install "completions/helm-s3-publisher.fish"
          man1.install "manpages/helm-s3-publisher.1.gz"
        end
      end
    end
  end

  test do
    system "#{bin}/helm-s3-publisher version"
  end
end

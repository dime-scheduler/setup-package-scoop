cask "dimescheduler-setup" do
  version "0.10.7"
  sha256 "14c35fa64a92b191b51cd8e29e227e2435f05b0ecf68601147916fd15728250c"

  url "https://stdimescheduler.blob.core.windows.net/setup/v#{version}/dimescheduler-setuppackagebuilder_0.1.0_universal.dmg"
  name "Dime.Scheduler Setup Package Builder"
  desc "DSL configuration tool for Dime.Scheduler"
  homepage "https://www.dimescheduler.com"

  livecheck do
    url "https://github.com/dime-scheduler/dsl/releases/latest"
    strategy :github_latest
  end

  app "Dime.Scheduler Setup Package Builder.app"

  zap trash: [
    "~/Library/Application Support/com.dimesoftware.dimescheduler.setup-package-builder",
    "~/Library/Caches/com.dimesoftware.dimescheduler.setup-package-builder",
    "~/Library/Preferences/com.dimesoftware.dimescheduler.setup-package-builder.plist",
    "~/Library/Saved Application State/com.dimesoftware.dimescheduler.setup-package-builder.savedState",
  ]
end

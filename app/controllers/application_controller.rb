class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # Changes to the importmap will invalidate the etag for HTML responses
  stale_when_importmap_changes

  helper_method :container_class

  def container_class
    # 神籤result画面だけ囲わない
    if controller_name == "omikuji" && action_name == "result"
      ""
    else
      "page-container"
    end
  end
end

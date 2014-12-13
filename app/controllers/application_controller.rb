class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def root
    render text: <<-EOS
      <html>
        <body>
          <p>Hello from #{request.host}. It is <strong>#{Time.now}</strong>!</p>
        </body>
      </html>
    EOS
  end
end

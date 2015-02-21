use Rack::Static,
  :urls => ["/images", "/js", "/css", "/3d_css", "/3d_js", "/fonts", "/gallery", "/img", "/pics"],
  :root => "static"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('static/index.html', File::RDONLY)
  ]
}
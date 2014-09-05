
require 'rubygems'
require 'page-object'

HOST_AND_PORT = 'http://localhost:8080'

def blog_url
  "#{HOST_AND_PORT}/grailsblog/post/list"
end
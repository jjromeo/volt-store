# See https://github.com/voltrb/volt#routes for more info on routes

get '/about', _action: 'about'

get '/products', _controller: 'products', _action: 'index'
get '/manage', _controller: 'products', _action: 'manage'

# Routes for login and signup, provided by user-templates component gem
get '/signup', _controller: 'user-templates', _action: 'signup'
get '/login', _controller: 'user-templates', _action: 'login'

# The main route, this should be last. It will match any params not
# previously matched.
get '/', {}

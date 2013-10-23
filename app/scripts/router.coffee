Intimi.Router.map ->
  @resource 'login'

  @resource 'authenticated', path: '/', ->
    @resource 'logout'
    @resource 'home'

    @resource 'contacts', ->
      @resource 'contact', path: '/:contact_id'

    @resource 'conversations', ->
      @resource 'conversation', path: '/:conversation_id'

    @resource 'settings', ->
      @resource 'profile'
      @resource 'password'

    @resource 'users', ->
      @route 'new'
      @resource 'user', path: '/:user_id'

    @resource 'vcards', ->
      @route 'new'
      @resource 'vcard', path: '/:vcard_id'

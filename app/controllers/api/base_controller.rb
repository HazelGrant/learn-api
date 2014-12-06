module Api
  class BaseController < ApplicationController
    protect_from_forgery with: :null_session
    before_action :set_resource, only: [:destroy, :show, :update]
    respond_to :json

    private
      def get_resource
        # Ruby method: gets value of instance variable if one is set; otherwise,
        # returns nil
        instance_variable_get("@#{resource_name}")
      end

      # Can be overridden in each API controller to permit additional parameters
      # for query
      def query_params
        {}
      end

      # params for pagination
      def page_params
        params.permit(:page, :page_size)
      end

      # the naming convention of the class probably equates to
      # resource_name.classify.constantize so that is being set to an instance
      # variable for our use
      def resource_class
        @resource_class ||= resource_name.classify.constantize
      end

      # Formatting method that takes the non-plural version of controller name
      # and sets it as the resource name
      def resource_name
        @resource_name ||= self.controller_name.singularize
      end

      # Formats name of controller's permitted params
      def resource_params
        @resource_params ||= self.send("#{resource_name}_params")
      end

      # The object passed through is NOT always assumed to be nil; it is just
      # initialized here as so.  It's just saying the variable will be starting
      # with zero, and if it happens to scoop up a resource_class with the id
      # in question, then boom, resource is actually good for something other
      # than nil

      def set_resource(resource = nil)
        resource ||= resource_class.find(params[:id])

        # Ruby method: sets second variable to first one
        instance_variable_set("@#{resource_name}", resource)
      end
    end
  end

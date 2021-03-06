# frozen_string_literal: true

module Types
  module Objects
    class Base < GraphQL::Schema::Object
      include Imgix::Rails::UrlHelper
      include ImageHelper

      def annict_id
        object.id
      end

      def build_order(order_by)
        return OrderProperty.new unless order_by

        OrderProperty.new(order_by[:field], order_by[:direction])
      end
    end
  end
end

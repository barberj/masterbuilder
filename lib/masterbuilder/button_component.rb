# frozen_string_literal: true

require "view_component"

module Masterbuilder
  class ButtonComponent < ViewComponent::Base
    VARIANTS = %i[primary secondary danger].freeze
    SIZES = %i[sm md lg].freeze

    attr_reader :variant, :size, :type, :disabled

    def initialize(variant: :primary, size: :md, type: "button", disabled: false, **html_options)
      @variant = variant
      @size = size
      @type = type
      @disabled = disabled
      @html_options = html_options
    end

    def call
      tag.button(content, **button_attributes)
    end

    private

    def button_attributes
      {
        type: type,
        disabled: disabled,
        class: button_classes
      }.merge(@html_options)
    end

    def button_classes
      [
        base_classes,
        variant_classes,
        size_classes,
        @html_options.delete(:class)
      ].compact.join(" ")
    end

    def base_classes
      "inline-flex items-center justify-center font-medium rounded-lg transition-colors focus:outline-none focus:ring-2 focus:ring-offset-2 disabled:opacity-50 disabled:cursor-not-allowed"
    end

    def variant_classes
      case variant
      when :primary
        "bg-blue-600 text-white hover:bg-blue-700 focus:ring-blue-500"
      when :secondary
        "bg-gray-200 text-gray-900 hover:bg-gray-300 focus:ring-gray-500"
      when :danger
        "bg-red-600 text-white hover:bg-red-700 focus:ring-red-500"
      else
        "bg-blue-600 text-white hover:bg-blue-700 focus:ring-blue-500"
      end
    end

    def size_classes
      case size
      when :sm
        "px-3 py-1.5 text-sm"
      when :md
        "px-4 py-2 text-base"
      when :lg
        "px-6 py-3 text-lg"
      else
        "px-4 py-2 text-base"
      end
    end
  end
end

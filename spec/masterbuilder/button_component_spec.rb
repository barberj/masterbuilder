# frozen_string_literal: true

require "spec_helper"
require "action_view"
require "view_component/test_helpers"

RSpec.describe Masterbuilder::ButtonComponent, type: :component do
  include ViewComponent::TestHelpers

  describe "#call" do
    it "renders a button with default attributes" do
      component = described_class.new
      render_inline(component) { "Click me" }

      expect(page).to have_selector("button[type='button']")
      expect(page).to have_content("Click me")
      expect(page).to have_selector("button.bg-blue-600") # primary variant
    end

    it "renders with primary variant" do
      component = described_class.new(variant: :primary)
      render_inline(component) { "Primary" }

      expect(page).to have_selector("button.bg-blue-600.text-white")
    end

    it "renders with secondary variant" do
      component = described_class.new(variant: :secondary)
      render_inline(component) { "Secondary" }

      expect(page).to have_selector("button.bg-gray-200.text-gray-900")
    end

    it "renders with danger variant" do
      component = described_class.new(variant: :danger)
      render_inline(component) { "Danger" }

      expect(page).to have_selector("button.bg-red-600.text-white")
    end

    it "renders with small size" do
      component = described_class.new(size: :sm)
      render_inline(component) { "Small" }

      expect(page).to have_selector("button.px-3.py-1\\.5.text-sm")
    end

    it "renders with medium size" do
      component = described_class.new(size: :md)
      render_inline(component) { "Medium" }

      expect(page).to have_selector("button.px-4.py-2.text-base")
    end

    it "renders with large size" do
      component = described_class.new(size: :lg)
      render_inline(component) { "Large" }

      expect(page).to have_selector("button.px-6.py-3.text-lg")
    end

    it "renders as disabled" do
      component = described_class.new(disabled: true)
      render_inline(component) { "Disabled" }

      expect(page).to have_selector("button[disabled]")
    end

    it "accepts custom type attribute" do
      component = described_class.new(type: "submit")
      render_inline(component) { "Submit" }

      expect(page).to have_selector("button[type='submit']")
    end

    it "merges additional HTML options" do
      component = described_class.new(id: "my-button", data: {action: "click->controller#method"})
      render_inline(component) { "Custom" }

      expect(page).to have_selector("button#my-button")
      expect(page).to have_selector("button[data-action='click->controller#method']")
    end

    it "preserves custom classes" do
      component = described_class.new(class: "custom-class")
      result = render_inline(component) { "Custom Class" }

      # Check that the button contains both custom and default classes
      html = result.to_html
      expect(html).to include("custom-class")
      expect(html).to include("inline-flex")
      expect(html).to include("bg-blue-600")
    end
  end
end

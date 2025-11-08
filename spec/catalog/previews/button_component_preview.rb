# frozen_string_literal: true

# @label Button
# @display body_class "p-8 bg-gray-50"
class ButtonComponentPreview < Lookbook::Preview
  # Primary button (default variant)
  # ----
  # The primary button is used for main actions
  # @param text text "Button text"
  # @param size select { choices: [sm, md, lg] }
  # @param disabled toggle
  def primary(text: "Primary Button", size: :md, disabled: false)
    render Masterbuilder::ButtonComponent.new(variant: :primary, size: size.to_sym, disabled: disabled) do
      text
    end
  end

  # Secondary button
  # ----
  # The secondary button is used for less prominent actions
  # @param text text "Button text"
  # @param size select { choices: [sm, md, lg] }
  # @param disabled toggle
  def secondary(text: "Secondary Button", size: :md, disabled: false)
    render Masterbuilder::ButtonComponent.new(variant: :secondary, size: size.to_sym, disabled: disabled) do
      text
    end
  end

  # Danger button
  # ----
  # The danger button is used for destructive actions
  # @param text text "Button text"
  # @param size select { choices: [sm, md, lg] }
  # @param disabled toggle
  def danger(text: "Danger Button", size: :md, disabled: false)
    render Masterbuilder::ButtonComponent.new(variant: :danger, size: size.to_sym, disabled: disabled) do
      text
    end
  end

  # All variants
  # ----
  # Shows all button variants side by side
  def all_variants
    render_with_template
  end

  # All sizes
  # ----
  # Shows all button sizes for comparison
  def all_sizes
    render_with_template
  end

  # Disabled states
  # ----
  # Shows buttons in their disabled state
  def disabled_states
    render_with_template
  end
end

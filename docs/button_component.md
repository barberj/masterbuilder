# ButtonComponent

A flexible, accessible button component built with ViewComponent and styled with Tailwind CSS.

## Installation

The ButtonComponent is included in the masterbuilder gem. Make sure you have the gem installed:

```ruby
gem 'masterbuilder'
```

## Usage

### Basic Button

```erb
<%= render Masterbuilder::ButtonComponent.new do %>
  Click me
<% end %>
```

### Variants

The component supports three variants:

```erb
<%# Primary (default) %>
<%= render Masterbuilder::ButtonComponent.new(variant: :primary) do %>
  Primary Button
<% end %>

<%# Secondary %>
<%= render Masterbuilder::ButtonComponent.new(variant: :secondary) do %>
  Secondary Button
<% end %>

<%# Danger %>
<%= render Masterbuilder::ButtonComponent.new(variant: :danger) do %>
  Delete
<% end %>
```

### Sizes

Three sizes are available:

```erb
<%# Small %>
<%= render Masterbuilder::ButtonComponent.new(size: :sm) do %>
  Small
<% end %>

<%# Medium (default) %>
<%= render Masterbuilder::ButtonComponent.new(size: :md) do %>
  Medium
<% end %>

<%# Large %>
<%= render Masterbuilder::ButtonComponent.new(size: :lg) do %>
  Large
<% end %>
```

### Button Types

```erb
<%# Regular button (default) %>
<%= render Masterbuilder::ButtonComponent.new(type: "button") do %>
  Button
<% end %>

<%# Submit button %>
<%= render Masterbuilder::ButtonComponent.new(type: "submit") do %>
  Submit Form
<% end %>

<%# Reset button %>
<%= render Masterbuilder::ButtonComponent.new(type: "reset") do %>
  Reset
<% end %>
```

### Disabled State

```erb
<%= render Masterbuilder::ButtonComponent.new(disabled: true) do %>
  Disabled Button
<% end %>
```

### Custom HTML Attributes

You can pass any additional HTML attributes:

```erb
<%= render Masterbuilder::ButtonComponent.new(
  id: "my-button",
  class: "custom-class",
  data: { 
    action: "click->controller#method",
    turbo_method: :delete 
  }
) do %>
  Custom Button
<% end %>
```

### Complete Example

```erb
<%= render Masterbuilder::ButtonComponent.new(
  variant: :danger,
  size: :lg,
  type: "button",
  class: "mt-4",
  data: { 
    turbo_method: :delete,
    turbo_confirm: "Are you sure?" 
  }
) do %>
  Delete Account
<% end %>
```

## Styling

The component uses Tailwind CSS for styling. The following classes are applied:

### Base Classes
- `inline-flex items-center justify-center`
- `font-medium rounded-lg`
- `transition-colors`
- `focus:outline-none focus:ring-2 focus:ring-offset-2`
- `disabled:opacity-50 disabled:cursor-not-allowed`

### Variant Classes

**Primary:**
- `bg-blue-600 text-white`
- `hover:bg-blue-700`
- `focus:ring-blue-500`

**Secondary:**
- `bg-gray-200 text-gray-900`
- `hover:bg-gray-300`
- `focus:ring-gray-500`

**Danger:**
- `bg-red-600 text-white`
- `hover:bg-red-700`
- `focus:ring-red-500`

### Size Classes

**Small:** `px-3 py-1.5 text-sm`

**Medium:** `px-4 py-2 text-base`

**Large:** `px-6 py-3 text-lg`

## Accessibility

The component follows accessibility best practices:

- Uses semantic `<button>` element
- Includes proper focus states with visible focus rings
- Supports disabled state with appropriate visual feedback
- Keyboard accessible by default

## API Reference

### Parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `variant` | Symbol | `:primary` | Visual style (`:primary`, `:secondary`, `:danger`) |
| `size` | Symbol | `:md` | Button size (`:sm`, `:md`, `:lg`) |
| `type` | String | `"button"` | HTML button type attribute |
| `disabled` | Boolean | `false` | Whether the button is disabled |
| `**html_options` | Hash | `{}` | Additional HTML attributes |

### Content Block

The component accepts a content block that will be rendered as the button's label/content.

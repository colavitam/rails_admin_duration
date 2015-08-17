# RailsAdminDuration
[![Gem Version](https://badge.fury.io/rb/rails_admin_duration.svg)](http://badge.fury.io/rb/rails_admin_duration)

RailsAdminDuration adds a duration field type to RailsAdmin. It stores durations in seconds (like Rails's Duration type) and can be used with integer columns.

## Installation

Add the following to your Gemfile:
```ruby
gem 'rails_admin_duration'
```

## Configuration

To use RailsAdminDuration with a field, manually specify the field's type:
```ruby
rails_admin do
  field :time_active, :duration
end
```

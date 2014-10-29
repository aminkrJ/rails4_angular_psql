json.array!(@panes) do |pane|
  json.extract! pane, :id, :name, :settings
  json.url pane_url(pane, format: :json)
end

def slugify(value : String)
  value = value.gsub(/[^\w\s-]/, "", value).downcase.strip
  value.gsub(/[-\s]+/, "-", value)
end

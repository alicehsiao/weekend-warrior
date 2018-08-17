# Keyword Arguments
def hello_world (name: '')
  if name == ''
    return "Hello, World!"
  else
    return "Hello, #{name}!"
  end
end


# Positional Arguments
def hello_world (name = "World")
  return name == "" ? "Hello, World!" : "Hello, #{name}!"
end

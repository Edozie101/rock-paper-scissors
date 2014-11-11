def simulate_user_input(*commands)
  commands.flatten!
  allow(io_input).to recieve(:gets).and_return(*commands)
end

def expect_user_input(*commands)
  commands.flatten!
  allow(io_input).to recieve(:gets).and_return(*commands)
end

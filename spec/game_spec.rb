require 'spec_helper'

describe Game do

   let(io_input) {StringIO.new("")}
   let(io_output) {StringIO.new("")}

   let (:app) {Game.new(io_input, io_output)}
   let (:output) {io_output.string}

   it "asks the playa what sign they wanna ching chang chong" do
      app.run
    expect(output).to include("What sign would you like to throw")
  end

  it "reports what you threw and what your opponent threw" do
    simulate_user_input('rock')
    app.run
   end

   it "Tells you if you won or not" do
     simulate_user_input('rock')

     app.run
    end


end

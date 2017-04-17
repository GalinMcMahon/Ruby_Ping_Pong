require('rspec')
require('ping_pong')

describe('Fixnum#ping_pong') do
  it("push numbers from 1 to self in an array") do
    expect((4).ping_pong()).to(eq([1,2,3,4]))
  end
  it("push numbers divisible by 3 and replace it to 'ping'") do
    expect((6).ping_pong()).to(eq([1,2,"ping",4,5,"ping"]))
  end
  it("push numbers divisible by 5 and replace it to 'pong'")do
    expect((5).ping_pong()).to(eq([1,2,"ping",4,"pong"]))
  end
   it("push numbers divisible by 15 and replace it to 'ping-pong'") do
    expect((15).ping_pong()).to(eq([1,2,"ping",4,"pong","ping",7,8,"ping","pong",11,"ping",13,14,"ping-pong"]))
  end
end

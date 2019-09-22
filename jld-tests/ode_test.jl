using DifferentialEquations, JLD2, FileIO

f(u,p,t) = 1.01*u
u0=1/2
tspan = (0.0,10.0)
saveat = 0.01
prob = ODEProblem(f,u0,tspan)
sol = solve(prob,RK4(),saveat=0.1)
a_sols = Array{ODESolution,1}(undef,10)
a_sols[1]=sol
a_sols[2]=sol
@save "a.jld2" a_sols

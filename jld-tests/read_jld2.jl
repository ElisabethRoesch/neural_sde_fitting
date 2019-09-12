using DifferentialEquations, JLD2, FileIO
f(u,p,t) = 1.01*u

@load "/Users/eroesch/github/neural_sde_fitting/a.jld2" a_sols

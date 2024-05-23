[Mesh]
    [mesh]
        type = GeneratedMeshGenerator
        dim = 2
        nx = 100
        ny = 10
        xmax = 10
        ymax = 20
    []
[] 

[Variables]
    [pressure]
    []
[]

[Kernels]
    [diffusion]
        type = ADDiffusion 
        variable = pressure
    []
[]

[BCs]
    [left]
        type = ADDirichletBC
        variable = pressure
        boundaty = left
        value = 4000
    []
    [right]
        type = ADDirichletBC
        variable = pressure
        boundary = right
        value = 0
    []
[]
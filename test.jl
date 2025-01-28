
using Plots

large_number = 1e8
small_increment = 1e-8
n_steps = 1000
theoretical = large_number .+ (1:n_steps) .* small_increment
actual = fill(large_number, n_steps)
for i in 1:n_steps
  actual[i] += small_increment
end

x = 1:n_steps 
y1 = theoretical .- large_number  # แกน Y (ค่าทางทฤษฎี)
y2 = actual .- large_number       # แกน Y (ค่าที่ได้จริง)
plt = plot(x, y1, label = "Theoretical", color = :blue, lw = 2)
plot!(x, y2, label = "Actual", color = :red, lw = 2, linestyle = :dash)
title!("Round-Off Error Visualization")
xlabel!("Number of Steps")
ylabel!("Increment from Large Number")





# แสดงกราฟ
display(plt)
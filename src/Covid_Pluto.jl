### A Pluto.jl notebook ###
# v0.14.9

using Markdown
using InteractiveUtils

# ╔═╡ e23acf2d-d4b1-4e5c-bbff-1d0e954aee09
using CSV

# ╔═╡ 7d7537ab-d969-4a33-918e-66fcd3d90984
using DataFrames

# ╔═╡ 20ccd69d-e6ea-4d8b-bc2f-ffd4ea8ff4d4
md"""
## Covid with Julia
Soourced from 
"""

# ╔═╡ 1464bdcd-3f82-459e-ba2f-6d03f97e2a40
md"""
---------------------------------------------------------------------------------
"""

# ╔═╡ 4407b13c-6893-4910-ab0a-e6042bb2d7c6
md"""
https://github.com/mitmath/6S083

https://www.youtube.com/watch?v=Yr8Og1Rre1I&t=7s

https://github.com/CSSEGISandData/COVID-19

COVID-19/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_global.csv
"""

# ╔═╡ 81917f5d-ff6f-4fe0-8448-71239a44f7e7
md"""
https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_global.csv
"""

# ╔═╡ 1e3a99cc-d200-4988-abc9-7fac03bf7a69
md"""
---------------------------------------------------------------------------------
"""

# ╔═╡ a1709fd4-3729-4193-af68-15ea361f8d96
md"""
store above URL CSV in a varaible
"""

# ╔═╡ 7f8f8bac-6bfc-4eca-9dc4-dd3296e1f825
url = "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_global.csv"

# ╔═╡ 7c696ef1-34f3-4a83-a4fa-cef998dde43c
download(url, "confirmed_global.csv")

# ╔═╡ ac55e60d-ccfa-4712-8e72-d5269f90f979
data = CSV.read("confirmed_global.csv", DataFrame);

# ╔═╡ f04bc82d-65f6-41e9-b75e-b86addf98e80
md"""
Change Header titles
"""

# ╔═╡ 948e2842-2d99-4d39-b9ad-eadc4d96517c
data2 = rename(data, 1 => "Provice", 2 => "Country" );

# ╔═╡ 6ce29b14-bdf9-41e3-8178-ab38c68745b6
md"""
extract unique countries name
"""

# ╔═╡ e63f364e-4690-4222-a02f-4b6391746774
cntr_list = unique(collect(data2[:,2]));

# ╔═╡ 44900fd7-fa9e-4acb-bae5-92feb117db7c
for i in 1:length(cntr_list)
	#@show cntr_list[4] #output goes on REPL Screen
end

# ╔═╡ dfb08a44-4316-4175-9180-71f462061874
cntr_list[4]

# ╔═╡ 25d9d261-afb2-45e5-8174-4074967f840f
@show cntr_list[7]

# ╔═╡ 0bdf37a8-f935-4293-9243-00a57a8eb752


# ╔═╡ b02a566d-0618-498c-b4ef-49afc52cc6b5


# ╔═╡ 600f7e94-3cfe-4872-b04a-aa376b7edb94


# ╔═╡ 1d084057-2b63-426b-87f6-d94dd9a79e17


# ╔═╡ Cell order:
# ╟─20ccd69d-e6ea-4d8b-bc2f-ffd4ea8ff4d4
# ╟─1464bdcd-3f82-459e-ba2f-6d03f97e2a40
# ╟─4407b13c-6893-4910-ab0a-e6042bb2d7c6
# ╟─81917f5d-ff6f-4fe0-8448-71239a44f7e7
# ╟─1e3a99cc-d200-4988-abc9-7fac03bf7a69
# ╟─a1709fd4-3729-4193-af68-15ea361f8d96
# ╟─7f8f8bac-6bfc-4eca-9dc4-dd3296e1f825
# ╟─7c696ef1-34f3-4a83-a4fa-cef998dde43c
# ╠═e23acf2d-d4b1-4e5c-bbff-1d0e954aee09
# ╠═7d7537ab-d969-4a33-918e-66fcd3d90984
# ╠═ac55e60d-ccfa-4712-8e72-d5269f90f979
# ╟─f04bc82d-65f6-41e9-b75e-b86addf98e80
# ╠═948e2842-2d99-4d39-b9ad-eadc4d96517c
# ╟─6ce29b14-bdf9-41e3-8178-ab38c68745b6
# ╠═e63f364e-4690-4222-a02f-4b6391746774
# ╠═44900fd7-fa9e-4acb-bae5-92feb117db7c
# ╠═dfb08a44-4316-4175-9180-71f462061874
# ╠═25d9d261-afb2-45e5-8174-4074967f840f
# ╠═0bdf37a8-f935-4293-9243-00a57a8eb752
# ╠═b02a566d-0618-498c-b4ef-49afc52cc6b5
# ╠═600f7e94-3cfe-4872-b04a-aa376b7edb94
# ╠═1d084057-2b63-426b-87f6-d94dd9a79e17

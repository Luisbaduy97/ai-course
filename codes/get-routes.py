import pandas as pd
# Reading txt with routes
f = open('routes.txt', 'r')
# Save text in data variable
data = f.read()
data = data.replace('./', '')
# print(data)
# Split text by pattern
routes_arr = data.split(',')
routes_f = pd.DataFrame(routes_arr,columns=(['routes']))
routes_f.to_csv('patients_routes.csv', index=False, sep=',')
# print(len(routes_arr))
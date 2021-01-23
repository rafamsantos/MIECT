import json

data = { }
data[ 'people' ] =[ ]
data[ 'people' ].append({
          'name' : 'Scott',
          'website' : 'stackabuse.com',
          'from' : 'Nebrasca'
          })
data[ 'people' ].append({
          'name' : 'Larry',
          'website' : 'Google.com',
          'from' : 'Nebrasca'
          })
data[ 'people' ].append({
          'name' : 'Tim',
          'website' : 'apple.com',
          'from' : 'Alabama'
          })

with open ( 'data.txt', 'w') as outfile:
          json.dump( data, outfile )

// Map
// collection map ini bisa menyimpan data dengan format key-value
var collection = {
  'Jakarta' : 'Indonesia',
  'London': 'England',
  'Tokyo': 'Japan',
  // ^key     ^value
};

void main() {
  var capital = {
    'Jakarta': 'Indonesia',
    'London': 'England',
    'Tokyo': 'Japan',
  };

  // untuk bisa mengakses nilai dari map, kita bisa gunakan key dari nilainya
  print(capital['Jakarta']);

  var mapKeys = capital.keys;
  print('mapKeys: $mapKeys');

  var mapValue = capital.values;
  print('mapValue: $mapValue');

  var mapLength = capital.length;
  print('mapLength: $mapLength');
  
  //untuk menambahkan key-value yang baru:
  capital['New Delhi'] = 'India';
  //          ^ key         ^ value
  print(capital['Semarang']);
}


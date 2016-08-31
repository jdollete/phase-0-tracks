# Nested motorcycle shop

m_shop = {
  sport_bike: {
    kawasaki: {
      sport: ['Ninja 1000',
        'Ninja 650',
        'Ninja 300'],
      super_sport: ['Ninja ZX-14R',
        'Ninja ZX-10R',
        'Ninja ZX-6R']
    },
    honda: {
      sport: ['CBR600R',
        'CBR500R',
        'CBR300R'],
      super_sport: ['RC213v-S',
        'CBR1000RR',
        'CBR600RR']
    },
    suzuki: {
      sport: ['GSXR-600',
        'GSXR750'],
      super_sport: ['GSXR-1000',
        'Hayabusa']
    },
    yamaha: {
      sport: ['FZ1',
        'FZ-10',
        'FZ6R'],
      super_sport: ['YZF-R1M',
        'YZF-R6',
        'YZF-R3']
    }

  },
  cruiser: {
    suzuki: ['Boulevard C50',
      'Boulevard M90',
      'Boulevard M109R'],
    honda: ['Gold Wing F6B',
      'Fury',
      'NM4'],
    kawasaki: ['Vulcan 1700',
      'Vulcan 900',
      'Vulcan S']
  },
  off_road: {
    suzuki: ['RMX450Z',
      'DR-Z125L',
      'DR-Z70'],
    kawasaki: ['KLX 140',
      'KLX 110']
  },
  maintainance: ['Oil Change',
    'Inspection',
    'Repairs',
    'Modify'],

  assessories: {
    helmets: {
      full_face: ['Icon', 'Arai', 'Shoei'],
      half_face: ['Bell', 'Zox', 'GMAX']
    },
    jackets: ['Speed and Strength', 'Icon'],
    boots: ['Icon', 'Speed and Strength'],
    gloves: ['Icon', 'A-Star']
  },
}

p m_shop[:sport_bike][:suzuki][:sport]
p m_shop[:assessories][:gloves][0]
p m_shop[:sport_bike][:yamaha][:super_sport].reverse
p m_shop[:cruiser][:suzuki][2].upcase

<?php

return [
    'email' => [      
        'is_unique' => 'Ese correo electronico ya esta registrado'
    ],
    'password_confirmation' => [
        'required' => 'Por favor, repite la contraseña',
        'matches' => 'Por favor, ingrese la misma contraseña de buevo'
    ]

];

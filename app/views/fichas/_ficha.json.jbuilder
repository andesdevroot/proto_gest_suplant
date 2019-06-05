json.extract! ficha, :id, :nombre, :fecha_nacimiento, :domicilio, :comuna, :correo, :fono, :estado_civil, :cargas_familiares, :cargo, :escala, :grupo_trabajo, :email_corporativo, :fecha_ingreso, :socio_id, :created_at, :updated_at
json.url ficha_url(ficha, format: :json)

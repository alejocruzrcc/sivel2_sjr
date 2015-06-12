# encoding: UTF-8

module Sivel2Sjr
  class Usuario < Sivel2Gen::Usuario

    has_many :casosjr, class_name: 'Sivel2Sjr::Casosjr',
      foreign_key: "asesor", validate: true
    has_many :etiqueta_usuario, class_name: 'Sivel2Sjr::EtiquetaUsuario',
      dependent: :delete_all
    has_many :etiqueta, class_name: 'Sip::Etiqueta',
      through: :etiqueta_usuario

    validate :rol_usuario
    def rol_usuario
      if oficina && (rol == Ability::ROLADMIN ||
                     rol == Ability::ROLINV || 
                     rol == Ability::ROLDIR)
        errors.add(:oficina, "Oficina debe estar en blanco para el rol elegido")
      end
      if !oficina && rol != Ability::ROLADMIN && rol != Ability::ROLINV && 
        rol != Ability::ROLDIR
        errors.add(:oficina, "El rol elegido debe tener oficina")
      end
      if (etiqueta.count != 0 && rol != Ability::ROLINV) 
        errors.add(:etiqueta, "El rol elegido no requiere etiquetas de compartir")
      end
      if (!current_usuario.nil? && current_usuario.rol == Ability::ROLCOOR)
        if (oficina.nil? || 
            oficina.id != current_usuario.oficina_id)
          errors.add(:oficina, "Solo puede editar usuarios de su oficina")
        end
      end
    end

  end
end

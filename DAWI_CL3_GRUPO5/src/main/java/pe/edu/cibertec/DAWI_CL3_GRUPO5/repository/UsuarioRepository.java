package pe.edu.cibertec.DAWI_CL3_GRUPO5.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import pe.edu.cibertec.DAWI_CL3_GRUPO5.model.bd.Usuario;

@Repository
public interface UsuarioRepository extends
 JpaRepository<Usuario, Integer>{
	
	Usuario findByEmail(String email);
	
	Usuario findByNomusuario(String username);

}

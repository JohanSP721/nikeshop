package co.edu.unbosque.nikeshopback.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import co.edu.unbosque.nikeshopback.model.Usuarios;

public interface UsuariosDAO extends JpaRepository<Usuarios, Integer>
{
	
}
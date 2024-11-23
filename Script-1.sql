select 
	c.nome as cliente_nome,
	c.email as cliente_email,
	s.tiposervico as tipo_de_servico,
	s.data as data_servico,
	s.valor as valor_servico,
	r.nome as revendedor_nome,
	r.nivelrevendedor as nivel_revendedor
from 
	cliente c
inner join
	servico s on c.id = s.id_servico 
inner join 
	revendedor r on s.id_servico = r.id_revendedor 
where 
	s.data between '2024-01-01' and '2024-12-31'
	and r.nivelrevendedor = '1';
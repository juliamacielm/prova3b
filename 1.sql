

SELECT 
f.nome,
id_funcionarios,
d.nome_departamentos
FROM
funcionarios f
LEFT JOIN departamentos d ON
id_funcionarios =
d.nome_departamentos;

 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
											
SELECT 
f.nome,
f.id_funcionario,
avg(a.nota) as media_avaliacao
FROM
funcionarios f
LEFT JOIN avaliacao a on
f.id_funcionario =
d.id_funcionario
GROUP BY 
f.id_funcionario,
f.nome
ORDER BY
f.nome;



SELECT 
id_folha,
f.nome as nome_funcionario,
fp.salario_bruto,
fp.descontos,
fp.salario_liquido
FROM
funcionarios f
LEFT JOIN folha_pagamento fp on
f.id_funcionarios = fp.id_funcionarios;



SELECT
f.id_funcionarios,
f.nome,
a.id_avaliacao,
a.dt_avaliacao,
a.nota,
a_obs
FROM
funcionarios
LEFT JOIN avaliacao a on 
f.id_funcionarios = 
a.id_funcionarios
ORDER BY 
f.nome;



SELECT
d.nome_departamento,
f.nome as nome_funcionarios
FROM
departamentos d right join funcionarios f on
d.id_departamento = 
f.id_departamento
WHERE
d.id_departamento is NULL;

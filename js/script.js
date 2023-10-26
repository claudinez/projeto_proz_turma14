 // Obtenha a referência à seção de Serviços pelo seu ID
 const servicosSection = document.getElementById('iservicos'); 
    
 // Array de serviços
 const servicos = [
   'Especialista em Acupuntura',
   'Especialista em Alergia e Imunologia',
   'Especialista em Dermatologia',
   'Especialista em Endoscopia',
   'Especialista em Geriatria',
   'Especialista em Infectologia',
   'Especialista em Nutrologia',
   'Especialista em Oftalmologia',
   'Especialista em Otorrinolaringologia',
   'Especialista em Pediatria',
   'Especialista em Psicologia',
   'Especialista em Cirurgia Plástica'
 ];

 // Crie uma lista não ordenada (ul)
 const ul = document.createElement('ul');

 // Adicione cada serviço à lista
 servicos.forEach(servico => {
   const li = document.createElement('li');
   li.textContent = servico;
   ul.appendChild(li);
 });

 // Adicione a lista à seção de Serviços
 servicosSection.appendChild(ul);
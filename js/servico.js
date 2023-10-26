function renderizarServicos1() {
    const servicos = [
        { imagem: '../img/Coração.png', nome: 'Especialista em Acupuntura' },
        { imagem: '../img/Coração.png', nome: 'Especialista em Alergia e Imunologia' },
        { imagem: '../img/Esteto oscopio.png', nome: 'Especialista em Dermatologia' },
        { imagem: '../img/Comprimido.png', nome: 'Especialista em Endoscopia' },
        // Adicione mais serviços conforme necessário
    ];

    const servicosContainer = document.querySelector('.servicos');
    
    servicos.forEach(servico => {
        const servicoDiv = document.createElement('div');
        servicoDiv.classList.add('servico'); // Adicione a classe correspondente
        const imagem = document.createElement('img');
        imagem.src = servico.imagem;
        imagem.alt = servico.nome;
        const paragrafo = document.createElement('p');
        paragrafo.textContent = servico.nome;
        servicoDiv.appendChild(imagem);
        servicoDiv.appendChild(paragrafo);
        servicosContainer.appendChild(servicoDiv);
    });
}

function renderizarServicos2() {
    // Crie uma função semelhante para a segunda seção de serviços
    const servicos = [
        { imagem: '../img/Coração.png', nome: 'Especialista em Geriatria' },
        { imagem: '../img/Coração.png', nome: 'Especialista em Infectologia' },
        { imagem: '../img/Esteto oscopio.png', nome: 'Especialista em Nutrologia' },
        { imagem: '../img/Comprimido.png', nome: 'Especialista em Oftalmologia' },
        // Adicione mais serviços conforme necessário
    ];

    const servicosContainer = document.querySelector('.servicos2');
    
    servicos.forEach(servico => {
        const servicoDiv = document.createElement('div');
        servicoDiv.classList.add('servico2'); // Adicione a classe correspondente
        const imagem = document.createElement('img');
        imagem.src = servico.imagem;
        imagem.alt = servico.nome;
        const paragrafo = document.createElement('p');
        paragrafo.textContent = servico.nome;
        servicoDiv.appendChild(imagem);
        servicoDiv.appendChild(paragrafo);
        servicosContainer.appendChild(servicoDiv);
    });
}

function renderizarServicos3() {
    // Crie uma função semelhante para a terceira seção de serviços
    const servicos = [
        { imagem: '../img/Coração.png', nome: 'Especialista em Otorrinolaringologia' },
        { imagem: '../img/Coração.png', nome: 'Especialista em Pediatria' },
        { imagem: '../img/Esteto oscopio.png', nome: 'Especialista em Psicologia' },
        { imagem: '../img/Comprimido.png', nome: 'Especialista em Cirurgia Plástica' },
        // Adicione mais serviços conforme necessário
    ];

    const servicosContainer = document.querySelector('.servicos3');
    
    servicos.forEach(servico => {
        const servicoDiv = document.createElement('div');
        servicoDiv.classList.add('servico3'); // Adicione a classe correspondente
        const imagem = document.createElement('img');
        imagem.src = servico.imagem;
        imagem.alt = servico.nome;
        const paragrafo = document.createElement('p');
        paragrafo.textContent = servico.nome;
        servicoDiv.appendChild(imagem);
        servicoDiv.appendChild(paragrafo);
        servicosContainer.appendChild(servicoDiv);
    });
}

// Chame as funções para renderizar os serviços após o carregamento da página
window.addEventListener('load', () => {
    renderizarServicos1();
    renderizarServicos2();
    renderizarServicos3();
});

export function createTable(data){
    const table = document.createElement('table');
    //agrego id
    table.id = 'tablaOradores';
    if(data.length > 0){
        //table.setAttribute('class', 'table table-bordered table-dark');
        table.appendChild(createtHead(data));
        data.forEach(item => {
            table.appendChild(createTBody(item));
        });
    }

    document.getElementById('contenedorTabla').appendChild(table);
    cargarDatosDesdeTabla(table);
}


function createtHead(data){
    const thead = document.createElement('thead');
    const objectKeys = Object.keys(data[0]);
    const tr = document.createElement('tr');

    objectKeys.forEach(key => {
        if(key !== 'id'){
            const th = document.createElement('th');
            th.appendChild(document.createTextNode(key));
            tr.appendChild(th);
        }
    });

    return thead.appendChild(tr);
}


function createTBody(data){
    const tbody = document.createElement('tbody');
    //const values = Object.values(data);
    const tr = document.createElement('tr');

        Object.values(data).forEach(key => {
            if(key !== data.id){
                const td = document.createElement('td');
                td.textContent = key;
                tr.appendChild(td);
            }else{
                tr.setAttribute('id', key);
            }
        });


    return tbody.appendChild(tr);
}

export function updateTable(data){
    if(data.length > 0){
        const table = document.getElementById('contenedorTabla');
        while(table.hasChildNodes()){
            table.removeChild(table.firstChild);
        }

        createTable(data);
    }
}
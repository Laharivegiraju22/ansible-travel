 function getDetails() {
         
            fetch('getpackages', {
                method: 'GET',
                headers: {
                    'Content-Type': 'application/json'
                } 
            }).then((response) => {
                response.json().then(
                		(pack) => {
                	
                	let tags="";	
                	let packages="";
                    const table=document.getElementById('table1');
                    console.log(pack);
                    pack.forEach((i) => { 
                    	console.log(document.getElementById('seasonPackage').value);
                    if(i.seasonPackage==(document.getElementById('seasonPackage').value))
                    {
//                        let row = document.createElement('tr');
//                        let col1 = document.createElement('td');
//                        col1.textContent = i.packageName;
//                        col1.setAttribute('class', 'col-sm-4');
//
//                        let col2 = document.createElement('td');
//                        col2.textContent = i.packageCost;
//
//                        let col3 = document.createElement('td');
//                        col3.textContent = i.packageTime;
//                        
//                        let col4 = document.createElement('td');
//                        col4.textContent = i.foodStatus;
//
//                        row.appendChild(col1);
//                        row.appendChild(col2);
//                        row.appendChild(col3);
//                        row.appendChild(col4);
//                        table.appendChild(row);
                    	
                    	
                    	
                    	tags+='<tr>'+'<td>'+i.packageName+'</td>'
                    	+'<td>'+i.packageCost+'</td>'
                    	+'<td>'+i.packageTime+'</td>'
                    	+'<td>'+ i.foodStatus+'</td>'+'</tr>';
                    	
                    	packages+='<option value="'+i.packageName+'">'+i.packageName+'</option>';
                    	
                    }
                    });
                    document.getElementById("loop").innerHTML = tags;
//                    document.getElementById("table1").innerHTML = "";
                    document.getElementById("packages1").innerHTML = packages;
                    
//                    document.body.appendChild(table);
                   
                });

            }).catch((err) => {
               
            });
 }
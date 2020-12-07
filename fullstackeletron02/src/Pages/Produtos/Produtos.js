import ComponenteProdutos from '../../Components/Produtos/produtos.js'
import { useState, useEffect} from 'react';
import { Container, Row } from 'react-bootstrap';


export default function Produtos(){
    
    const[produtos,setProdutos] = useState([]);
    
    useEffect(async () => { // Quando o componente for criado obter a api de forma assincrona. No entando haverá esperas em sequência, quando necessário

    const resposta = await fetch("http://localhost/novo-projeto-react/Models/ProdutoJSON.php");
    const dados = await resposta.json();
    
    setProdutos(dados);
        
    }, []);

    return (
        

                     <Container>
                     <Row>
                              {produtos && produtos.map(item =>
                            <ComponenteProdutos key = {item.idproduto} categoria = {item.categoria} descrição = {item.descricao} imagem = {item.imagem} preço = {item.preco} preçofinal = {item.precofinal} />
                        )}
                     </Row>
                    </Container>
               

            
        
     
    );
}
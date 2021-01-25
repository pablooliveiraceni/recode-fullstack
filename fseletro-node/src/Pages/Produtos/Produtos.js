import './produto.css';

import Categorias from '../../Components/Categorias/Categorias';
import ComponenteProdutos from '../../Components/Produtos/produtos.js'
import { useState, useEffect} from 'react';
import { Container, Row, Col } from 'react-bootstrap';


export default function Produtos(){
    
    const[produtos,setProdutos] = useState([]);
    
    useEffect(async () => { // Quando o componente for criado obter a api de forma assincrona. 
        //No entando haverá esperas em sequência, quando necessário

    const resposta = await fetch("http://localhost:3333/produtos");
    const dados = await resposta.json();
    
    setProdutos(dados);
        
    }, []);

    return (

                     <Container>
                         <h1>Produtos</h1> <hr/>
                     <Row>
                         <Col xs = {2}>
                             <Categorias />
                         </Col>
                         <Col>
                         <Row>

                         {produtos && produtos.map(item =>
                                <ComponenteProdutos key = {item.idproduto} categoria = {item.categoria} descrição = {item.descricao} imagem = {item.imagem} preco = {item.preco} precofinal = {item.precofinal} />
                            )}
                         </Row>
                         </Col>
                     
                           
                     </Row>
                    </Container>    
    );
}
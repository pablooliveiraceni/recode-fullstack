import './produto.css';

import { useState, useEffect, lazy, Suspense} from 'react';
import { Container, Row, Col } from 'react-bootstrap';

const Categorias = lazy(() => import('../../Components/Categorias/Categorias'));
const ComponenteProdutos = lazy(() => import('../../Components/Produtos/produtos.js'));



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
                             <Suspense fallback={<p>Carregando...</p>}>
                                 <Categorias />
                             </Suspense>
                            
                         </Col>
                         <Col>
                         <Row>

                         {produtos && produtos.map(item =>
                                <Suspense fallback={<p>Carregando...</p>}>
                                     <ComponenteProdutos key = {item.idproduto} categoria = {item.categoria} descrição = {item.descricao} imagem = {item.imagem} preco = {item.preco} precofinal = {item.precofinal} />
                                </Suspense>
                               
                            )}
                         </Row>
                         </Col>
                     
                           
                     </Row>
                    </Container>    
    );
}
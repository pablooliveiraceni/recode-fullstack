import {lazy, Suspense} from 'react';

import { Row } from 'react-bootstrap';

const ComponenteLoja = lazy(() => import('../../Components/Lojas/lojas.js'));

export default function Lojas(){
    
    return (
            <>
            <Row>
                <Suspense fallback={<p>Carregando...</p>}>
                <ComponenteLoja 
                cidade="São Paulo"
                endereco="Avenidade Paulista, 985" 
                andar="3 º andar"
                distrito="Jardins"
                numero="(11) 4444-4444"/>
                </Suspense>

                <Suspense fallback={<p>Carregando...</p>}>
                <ComponenteLoja 
                cidade="Rio de Janeiro"
                endereco="Avenida Presidente Vargas, 5000" 
                andar="10 º andar"
                distrito="Centro"
                numero="(21) 3333-3333"/>
                </Suspense>

                <Suspense fallback={<p>Carregando...</p>}>
                <ComponenteLoja 
                cidade="Santa Catarina"
                endereco="Rua Major Á vila, 370" 
                andar="5 º andar"
                distrito="Nordeste"
                numero="(47) 5555-5555"/>
                </Suspense>
            </Row>
           

           
            </>
    );
}

import { useState, useEffect} from 'react';

import { Form, Button, Container, Row, Col, Alert } from 'react-bootstrap';

export default function Contatos(){
  const [comentario, setComentario] = useState([]);
  const [render, setRender] = useState(false);
  const [msg, setMsg] = useState(false);

   useEffect(async () => {
     const url = "http://localhost:3333/contato";
     const response = await fetch(url);
     setComentario(await response.json());
   }, [render]);

  function registrarComentario(event){
       event.preventDefault();
    

    let formData = new FormData(event.target);

    const url = "http://localhost:3333/contato";

    fetch(url, {
      method: "POST",
      body: formData
    }).then((response) => response.json()).then((dados) =>{
      setRender(!render)
      setTimeout(() => {
        setMsg(false)
      }, 3000)
      
    })
  }

    return (
        
    <Row>

            
          <Container>
            <Form onSubmit={registrarComentario}>
              <Form.Group controlId="exampleForm.ControlInput1">
                  <Form.Label>Endereço de E-mail</Form.Label>
                  <Form.Control type="text" name ="nome" placeholder="Insira seu nome" />
              </Form.Group>
            
              <Form.Group controlId="exampleForm.ControlTextarea1">
                  <Form.Label>Deixe seu feedback</Form.Label>
                  <Form.Control as="textarea" rows={3} name="msg"/>
             </Form.Group>
              <Button type="submit">
               Enviar
              </Button>
            </Form>      
            </Container>
   
    {msg && <Alert variant="success">
      <p>
        Cadastrado com sucesso
      </p>
    </Alert>}
    
        {comentario.map((element) => {
                return (
                    <div className="card w-75 mx-auto mt-5">
                        <div className="card-header">
                            {element.nome}  
                        </div>
                        <div className="card-body">
                            {element.msg}
                        </div>
                    </div>
                )
            })}
       
    </Row>
        
    );
}

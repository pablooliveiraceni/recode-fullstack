import { Form, Button,Container } from 'react-bootstrap';

export default function Contatos(){


    return (
        

      <Container>

  
            <Form>
                <Form.Group controlId="exampleForm.ControlInput1">
                  <Form.Label>Endereço de E-mail</Form.Label>
                  <Form.Control type="email" placeholder="name@example.com" />
                </Form.Group>
                
                <Form.Group controlId="exampleForm.ControlSelect2">
                  
      
                </Form.Group>
                <Form.Group controlId="exampleForm.ControlTextarea1">
                  <Form.Label>Deixe seu feedback</Form.Label>
                  <Form.Control as="textarea" rows={3} />
                </Form.Group>
                <Button>
                  Enviar
                </Button>
            </Form>
              
      </Container>
        
    );
}

import './footer.css';

import formasPagamento from './formasPagamento.png';

export default function Footer(){
    
    return (
      <div>
          <footer>

            <img src={formasPagamento} style={{ width: '350px' }}/>
            <p>
              &copy;Todos os direitos reservados | Pablo Ceni
            </p>
            
          </footer>
      </div>

    );

}
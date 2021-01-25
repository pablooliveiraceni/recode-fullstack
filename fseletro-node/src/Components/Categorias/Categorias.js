import './Categorias.css';

export default function Categorias(props) {
    return (
        <div>
            <h4>Categorias</h4>
            <ul className="categorias">
                <li >Todos</li>
                <li >Fogões</li>
                <li >Geladeiras</li>
                <li >Microondas</li>
            </ul>
        </div>
    );
}
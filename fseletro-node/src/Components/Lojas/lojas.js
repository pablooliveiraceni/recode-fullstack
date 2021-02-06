
const componenteLoja = (props) => {
  return (
    <div className="col-lg-4 d-flex justify-content-center">
      <div
        className="card text-white m-3 border-0 shadow-lg"
        style={{
          minWidth: '15rem',
          background: '#003c86',
        }}
      >
        <div className="card-body">
          <h5 className="card-title">{props.cidade}</h5>
          <p className="card-text">
            {props.endereco}
            <br />
            {props.andar}
            <br />
            {props.distrito}
            <br />
            {props.numero}
          </p>
        </div>
      </div>
    </div>
  );
}

export default componenteLoja;
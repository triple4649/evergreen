var CommentBox = React.createClass({

  render: function() {
    return(
      <div className="commentBox">
        <HeaderList  headerimg='/images/foods.jpg'/>
        <div style={{height:5}}/>
        <CommentForm data={JSON.parse(this.props.data)}/>
      </div>    
    );
  }
});

var HeaderList = React.createClass({
  render: function() {
    return (
      <div style={{width:850,height:200,background:`url(${this.props.headerimg})`,border:'solid 1px black'}}>
        <span style={{fontSize:'xx-large',color:'white'}}>食べ歩き日記</span>
      </div>
    );
  }
});

var CommentForm = React.createClass({
  render: function() {
    var imageNodes=this.props.data.imgurl.url.map(function (url){
            return (
                <Imageblock  imgurl={url} />
            )
        }
    
    )
    return (
      <div style={{width:750,height:270,border:'dashed 1.5px darkred',margin:10,padding:10,backgroundColor:'#ffe4e1'}}>
        ・日時 {this.props.data.visitdate}<br/>
        ・店名 {this.props.data.storename}<br/>
        ・場所 {this.props.data.location}<br/>
        ・写真 <br/>
        {imageNodes}
      </div>
    );
  }
});

var Imageblock = React.createClass({
  render: function() {
    console.log(this.props.imgurl)
    return (
      <div style={{width:'200px',height:'150px',border:'solid 1.5px black',display: 'inline-block',
      background:`url(${this.props.imgurl}) no-repeat`,margin:5}}>
      </div>
    );
  }
});




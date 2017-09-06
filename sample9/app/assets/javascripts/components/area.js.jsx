var AreaBox = React.createClass({
    render: function() {
       //serverからのパラメータを取得する
       var serverparams = JSON.parse(this.props.data);
       console.log(serverparams)
       return(
         <div className="commentBox">
           <Ex_Header  
               headerimg_1='/images/area/header/b35d1767cfff233f-photo.jpeg'
               headerimg_2='/images/area/header/eed762bdc9ff14c0-photo-full.jpeg'
               headerimg_3='/images/area/header/4a511eaa93b6b239-photo.jpeg'
               headerimg_4='/images/area/header/CA390068.JPG'
           />
           <div style={{height:5}}/>
           <Ex_Content data={serverparams[0]}/>
         </div>
      );
  }
});

var Ex_Header = React.createClass({
  render: function() {
    return (
    <div style={{width:850,height:250,border:'solid 1px black',backgroundColor:'#2f4f4f',padding:10}}>
      <div><span style={{fontSize:'xx-large',color:'white'}}>地域探訪</span></div>
      <div style={{display:'flex',justifyContent:'space-between'}}>
        <div><img src={this.props.headerimg_1} height='200px'/></div>
        <div ><img src={this.props.headerimg_2} height='200px'/></div>
        <div ><img src={this.props.headerimg_3} height='200px'/></div>
        <div ><img src={this.props.headerimg_4} height='200px'/></div>
      </div>
    </div>
    );
  }
});

//メインコンテンツ
//記事を表示する
var Ex_Content = React.createClass({
  render: function() {
    console.log(this.props.data)
    var c =  this.props.data.areapictureurls.url
    var imageNodes=function(){
        if(!c.map){
           return (<Imageblock  imgurl={url} />)
        }else{
            return c.map(function (url){
                return (<Imageblock  imgurl={url} />)
            })    
        }
    }
    return (
      <div style={{width:750,border:'dashed 1.5px darkred',margin:10,padding:10,backgroundColor:'#ffe4e1'}}>
        ■ロケーション ： {this.props.data.location}<br/>
        ■日時 ：{this.props.data.visitdate} <br/>
        ■メモ 
        <div style={{width:600,border:'dashed 1px darkred',margin:10,padding:10}}>
            <span  dangerouslySetInnerHTML={{__html: this.props.data.memo}} />
        </div>
        ・写真 <br/>
        {imageNodes()}
      </div>
    );
  }
});
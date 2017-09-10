function closeView(str){_e(str).style.visibility = "hidden";}
function view(path,lang,str,paging){
    doPost(path,`lang=${lang}&_beforepaging=${paging}`,'programing')
    _e(str).style.top = `${window.innerHeight/4}px`;
    _e(str).style.left = `${window.innerHeight/4}px`;
    _e(str).style.visibility = "visible";
    divmove()
}
function _g() {
    return _k('input')
    .filter(a=>isNaN(a))
    .map(a=>`${a}=${_f(a)}`)
}
var CommentBox = React.createClass({
    handleFooterLinkClicked:function (param){
      $.ajax({
        url: '/reactsample/show/tabearukis/',
        dataType: 'text',
        headers: {
          'X-CSRF-Token': document.head.children['csrf-token'].content,
          'Content-Type': 'application/json'
        },        
        data: {
            _beforepaging: param,
        },  
        success: function(result) {
          this.setState({data: JSON.parse(result)});
        }.bind(this),
        error: function(xhr, status, err) {
          console.error(this.props.url, status, err.toString());
        }.bind(this)
      });    
        console.log(param)
    },    
    getInitialState: function() {
      return {data: JSON.parse(this.props.data)};
    },
    
    render: function() {
       //serverからのパラメータを取得する
       var serverparams = this.state.data;
       
       return(
         <div className="commentBox" >
           <HeaderList  headerimg='/images/foods.jpg'/>
           <ContentList data={serverparams.contents}/>
           <MyFooter 
           footerimg='/images/background/images.jpg' 
           data ={serverparams}
           onCommentSubmit={this.handleFooterLinkClicked} />
         </div>
      );
  }
});

var HeaderList = React.createClass({
  render: function() {
    return (
      <div style={{width:850,height:200,background:`url(${this.props.headerimg})`,border:'solid 1px black',position:'fixed',zIndex:10,top:0}}>
        <span style={{fontSize:'xx-large',color:'white'}}>ぺろーりさん食べ歩き日記</span>
      </div>
    );
  }
});

//メインコンテンツ
//記事のリストを格納する
var ContentList = React.createClass({
  render: function() {
    var contentNodes = this.props.data.map(
        function (d){
            return(
                <ContentForm data={d} />
            )
        }
    )
    return (
      <div style={{width:800,margin:10,padding:10,position:'relative',top:190}}>
        {contentNodes}
      </div>
    );
  }
});

//記事を表示する
var ContentForm = React.createClass({
  render: function() {
    return (
      <div style={{width:750,height:270,border:'dashed 1.5px darkred',margin:10,padding:10,backgroundColor:'#ffe4e1'}}>
        ・日時 {this.props.data.visitdate}<br/>
        ・店名 {this.props.data.storename}<br/>
        ・場所 {this.props.data.location}<br/>
        ・写真 (クリックすると拡大された写真が表示されます）<br/>
        <ImageNodes imgurls ={this.props.data.imgurl.url} />
      </div>
    );
  }
});
//イメージを横に並べるブロック
var ImageNodes = React.createClass({
   render: function() {
     var c =  this.props.imgurls
     var imageNodes=function(){
         if(!c.map){
            return (<Imageblock  imgurl={c.url} />)
         }else{
             return c.map(function (url){
                 return (<Imageblock  imgurl={url} />)
             })    
         }
     }
     return (
        <div>
            {imageNodes()}
        </div>   
    );
  }
});

//イメージを表示するブロック
var imageindex=0;
var Imageblock = React.createClass({
  getInitialState: function() {
    return {hover:false};
  },
  handleHover(index,isDisplay) {
    var imgref = this.refs[index]
    this.setState({topPosition:`${React.findDOMNode(imgref).offsetTop}px`})
    this.setState({leftPosition:`${React.findDOMNode(imgref).offsetLeft}px`})
    this.setState({hover: isDisplay});
  },
  render: function() {
    var index = imageindex++;
    var imageStyle={
      position  :'relative',
      width     :'200px',
      height    :'150px',
      border    :'solid 1.5px black',
      background:`url(${this.props.imgurl}) no-repeat`,
      margin:5
    }
    var myimagedivindex=`myImage${index}` 
    var imgdisplay={
        position        : 'absolute',
        display         : this.state.hover ? 'block':'none',
        top             : this.state.topPosition,
        left            : this.state.leftPosition,
        zIndex          : 10,
        backgroundColor : 'white'
    }
    return (
       <div style={{display:'inline-block'}}>
           <div style={imageStyle} 
               onClick={()=>this.handleHover(myimagedivindex,true)} 
               ref={myimagedivindex}>
           </div>
           <div style={imgdisplay} onClick={()=>this.handleHover(myimagedivindex,false)}>
               <img src={this.props.imgurl} />
           </div>
       </div>
    );
  }
});

//Footer
var MyFooter = React.createClass({
  render: function() {
    var parentParams =this.props.data
    
    return (
      <div style={{width:800,background:`url(${this.props.footerimg})`,margin:10,padding:10,position:'relative',top:170,zIndex:10}}>
        <MyNavigation 
        navigationtext='＜＜前へ'  
        isactive={parentParams.isbefore} 
        pagesize={parentParams.presentpage-5}
        onCommentSubmit={this.props.onCommentSubmit}
        />
           
        <MyNavigation navigationtext='次へ＞＞'  
        isactive={parentParams.isnext}   
        pagesize={parentParams.presentpage+5} 
        onCommentSubmit={this.props.onCommentSubmit}
        />
      </div>
    );
  }
});

var MyNavigation = React.createClass({
  handleClick:function(e){
    e.preventDefault();
    var pagesize =this.props.pagesize
    this.props.onCommentSubmit(pagesize)
  },
  render: function() {
    var isactive = this.props.isactive 
    var navigationtext = this.props.navigationtext
    if(isactive) return (<a href='#' onClick={this.handleClick}>{navigationtext}</a>)
    else return (<span>{navigationtext}</span>)
  }
});



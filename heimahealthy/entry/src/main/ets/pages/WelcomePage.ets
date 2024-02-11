@Extend(Text) function opacityWhiteText(opacity: number, fontSize: number = 10){
  .fontSize(fontSize)
  .opacity(opacity)
  .fontColor(Color.White)
}

@Entry
@Component
struct WelcomePage {
  @State message: string = 'Hello World'

  build() {
    Column({space:10}) {
      // 1.中央slogan
      Row(){
        Image($r('app.media.home_slogan')).width(260)
      }
      .layoutWeight(1)
      // 2.logo
      Image($r('app.media.home_logo')).width(150)
      // 3.文字描述
      Row(){
        Text('黑马健康支持').opacityWhiteText(0.8, 12)
        Text('IPv6')
          .opacityWhiteText(0.8)
          .border({style: BorderStyle.Solid, width: 1,color: Color.White, radius: 15})
          .padding({left:5,right:5})
        Text('网络').fontSize(12).opacity(0.8).fontColor(Color.White)
      }
      Text(`'减更多'指黑马健康App希望通过软件工具帮助更多用户实现身材管理`)
        .opacityWhiteText(0.6)
      Text(`浙ICP备0000000号-36F`)
        .opacityWhiteText(0.4)
        .margin({bottom: 35})
    }
    .width('100%')
    .height('100%')
    .backgroundColor($r('app.color.welcome_page_background'))
  }
}
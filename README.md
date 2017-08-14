###MMCategoty

> 为了提高项目开发效率，特意封装了常用的Category，不断完善中

**首先本分类使用cocoapods导入，只需要在podfile文件中`pod 'MMCategory'`   即可使用本分类;**

### instructions

----

- MMColor

  ```objective-c
      UILabel *lable =[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
      [lable setCenter:self.view.center];
      [lable setBackgroundColor:[UIColor colorWithHexString:@"7F007F"]];
      [self.view addSubview:lable];
  ```

- MMFastCoder（在本地是加密存储）

  ```objective-c
      NSArray *arr1 =@[@1,@2,@3,@4,@5,@6];
      [[MMFastCoder managerCenter]storeValue:arr1 withKey:@"yctest"];
  ```

  ​



> 未完待续。。。
>
> 如有疑问Email : grammermao@gmail.com
>
> 最后还是欢迎您的star(☆☆☆☆☆)，您的支持是我继续写demo的无限动力


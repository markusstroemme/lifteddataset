define i64 @anon0() local_unnamed_addr {
dec_label_pc_24dd4:
  %0 = alloca i64, align 8
  %storemerge12.reg2mem = alloca i64, align 8
  %storemerge3.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  %6 = call i64 @_Znam(i64 400)
  store i64 0, ptr %storemerge3.reg2mem, align 8
  store i64 0, ptr %storemerge12.reg2mem, align 8
  br i1 %5, label %dec_label_pc_24e60, label %dec_label_pc_24e0e

dec_label_pc_24e0e:                               ; preds = %dec_label_pc_24dd4, %dec_label_pc_24e0e
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %7 = mul i64 %storemerge3.reload, 4
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 5, ptr %9, align 4
  %10 = add nuw nsw i64 %storemerge3.reload, 1
  %exitcond4 = icmp eq i64 %10, 100
  store i64 %10, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond4, label %dec_label_pc_24e33, label %dec_label_pc_24e0e

dec_label_pc_24e33:                               ; preds = %dec_label_pc_24e0e
  %11 = icmp eq i64 %6, 0
  br i1 %11, label %dec_label_pc_24e98, label %dec_label_pc_24e3a

dec_label_pc_24e3a:                               ; preds = %dec_label_pc_24e33
  %12 = inttoptr i64 %6 to ptr
  %13 = and i64 %1, 4294967295
  %14 = inttoptr i64 %13 to ptr
  call void @_ZdaPv(ptr %12, ptr %14)
  br label %dec_label_pc_24e98

dec_label_pc_24e60:                               ; preds = %dec_label_pc_24dd4, %dec_label_pc_24e60
  %storemerge12.reload = load i64, ptr %storemerge12.reg2mem, align 8
  %15 = mul i64 %storemerge12.reload, 4
  %16 = add i64 %15, %6
  %17 = inttoptr i64 %16 to ptr
  store i32 5, ptr %17, align 4
  %18 = add nuw nsw i64 %storemerge12.reload, 1
  %exitcond = icmp eq i64 %18, 100
  store i64 %18, ptr %storemerge12.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_24e85, label %dec_label_pc_24e60

dec_label_pc_24e85:                               ; preds = %dec_label_pc_24e60
  %19 = icmp eq i64 %6, 0
  br i1 %19, label %dec_label_pc_24e98, label %dec_label_pc_24e8c

dec_label_pc_24e8c:                               ; preds = %dec_label_pc_24e85
  %20 = inttoptr i64 %6 to ptr
  %21 = and i64 %1, 4294967295
  %22 = inttoptr i64 %21 to ptr
  call void @_ZdaPv(ptr %20, ptr %22)
  br label %dec_label_pc_24e98

dec_label_pc_24e98:                               ; preds = %dec_label_pc_24e8c, %dec_label_pc_24e85, %dec_label_pc_24e3a, %dec_label_pc_24e33
  %23 = call i32 @globalReturnsTrueOrFalse()
  %24 = sext i32 %23 to i64
  ret i64 %24
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_3bd35:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr


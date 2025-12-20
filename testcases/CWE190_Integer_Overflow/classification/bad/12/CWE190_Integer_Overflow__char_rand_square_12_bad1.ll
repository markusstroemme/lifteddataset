@global_var_70d50 = external constant [54 x i8]
@global_var_76cf3 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2e421:
  %storemerge5.reg2mem = alloca i32, align 4
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  store i32 2, ptr %storemerge5.reg2mem, align 4
  br i1 %1, label %dec_label_pc_2e476, label %dec_label_pc_2e43f

dec_label_pc_2e43f:                               ; preds = %dec_label_pc_2e421
  %2 = call i32 @rand()
  %3 = urem i32 %2, 2
  %4 = icmp eq i32 %3, 0
  %5 = call i32 @rand()
  %6 = call i32 @rand()
  %7 = call i32 @rand()
  %8 = sext i1 %4 to i32
  %storemerge = xor i32 %7, %8
  %sext = mul i32 %storemerge, 16777216
  %9 = ashr exact i32 %sext, 24
  store i32 %9, ptr %storemerge5.reg2mem, align 4
  br label %dec_label_pc_2e476

dec_label_pc_2e476:                               ; preds = %dec_label_pc_2e421, %dec_label_pc_2e43f
  %storemerge5.reload = load i32, ptr %storemerge5.reg2mem, align 4
  %10 = call i32 @globalReturnsTrueOrFalse()
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %dec_label_pc_2e49f, label %dec_label_pc_2e484

dec_label_pc_2e484:                               ; preds = %dec_label_pc_2e476
  %12 = urem i32 %storemerge5.reload, 256
  %narrow = mul nuw nsw i32 %12, %12
  %13 = trunc i32 %narrow to i8
  call void @printHexCharLine(i8 %13)
  br label %dec_label_pc_2e4d8

dec_label_pc_2e49f:                               ; preds = %dec_label_pc_2e476
  %14 = trunc i32 %storemerge5.reload to i8
  %15 = sub i8 0, %14
  %16 = icmp slt i8 %15, 0
  %17 = icmp eq i1 %16, false
  %18 = zext i8 %15 to i32
  %19 = select i1 %17, i32 %18, i32 %storemerge5.reload
  %20 = trunc i32 %19 to i8
  %21 = icmp ult i8 %20, 12
  br i1 %21, label %dec_label_pc_2e4ae, label %dec_label_pc_2e4c9

dec_label_pc_2e4ae:                               ; preds = %dec_label_pc_2e49f
  %22 = urem i32 %storemerge5.reload, 256
  %narrow3 = mul nuw nsw i32 %22, %22
  %23 = trunc i32 %narrow3 to i8
  call void @printHexCharLine(i8 %23)
  br label %dec_label_pc_2e4d8

dec_label_pc_2e4c9:                               ; preds = %dec_label_pc_2e49f
  call void @printLine(ptr @global_var_70d50)
  br label %dec_label_pc_2e4d8

dec_label_pc_2e4d8:                               ; preds = %dec_label_pc_2e4c9, %dec_label_pc_2e4ae, %dec_label_pc_2e484
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5a014:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5a037, label %dec_label_pc_5a02b

dec_label_pc_5a02b:                               ; preds = %dec_label_pc_5a014
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5a037

dec_label_pc_5a037:                               ; preds = %dec_label_pc_5a02b, %dec_label_pc_5a014
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_5a542:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

